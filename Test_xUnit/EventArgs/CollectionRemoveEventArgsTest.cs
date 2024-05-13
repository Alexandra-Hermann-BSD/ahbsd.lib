// ahbsd.lib
//     Test_xUnit
//     CollectionRemoveEventArgsTest.cs
// 
//     Copyright 2024 Alexandra Hermann – Beratung, Software, Design
// 
//     Licensed under the Apache License, Version 2.0 (the "License");
//     you may not use this file except in compliance with the License.
//     You may obtain a copy of the License at
// 
//         http://www.apache.org/licenses/LICENSE-2.0
// 
//     Unless required by applicable law or agreed to in writing, software
//     distributed under the License is distributed on an "AS IS" BASIS,
//     WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//     See the License for the specific language governing permissions and
//     limitations under the License.

using System.Collections.Generic;
using ahbsd.lib.EventArgs;
using ahbsd.lib.EventHandler;
using JetBrains.Annotations;
using Xunit;

namespace Test_xUnit.EventArgs
{
    [TestSubject(typeof(CollectionRemoveEventArgs<string>))]
    public class CollectionRemoveEventArgsTest
    {

        [Fact]
        public void TestCollectionRemove()
        {
            TestClass testClass = new TestClass();
            testClass.OnCollectionAdded += TestClassOnCollectionAdded;
            testClass.OnCollectionRemoved += TestClassOnCollectionRemoved;
            
            testClass.AddToCollection("T1", "Hello");

            Assert.Contains("T1", testClass.Collection.Keys);
            
            testClass.RemoveCollection("T1");
            
            Assert.Empty(testClass.Collection);

            return;

            static void TestClassOnCollectionAdded(object sender, CollectionAddEventArgs<string> e)
            {
                Assert.Equal("Hello", e.Value);
                var affected = e.AffectedCollection;
                Assert.Contains("Hello", affected);
            }

            static void TestClassOnCollectionRemoved(object sender, CollectionRemoveEventArgs<string> e)
            {
                Assert.Contains("Hello", e.RemovedItems);
            }
        }

        private class TestClass
        {
            private readonly IDictionary<string, ICollection<string>> dict = new Dictionary<string, ICollection<string>>();

            public event CollectionAddEventHandler<string> OnCollectionAdded;

            public event CollectionRemoveArgsEventHandler<string> OnCollectionRemoved;

            public IReadOnlyDictionary<string, IReadOnlyCollection<string>> Collection
            {
                get
                {
                    IDictionary<string, IReadOnlyCollection<string>> result = new Dictionary<string, IReadOnlyCollection<string>>(dict.Count);
                    
                    foreach (KeyValuePair<string, ICollection<string>> kvp in dict)
                    {
                        result.Add(kvp.Key, kvp.Value as IReadOnlyCollection<string>);
                    }

                    return (IReadOnlyDictionary<string, IReadOnlyCollection<string>>) result;
                }
            }

            public void AddToCollection(string key, string value)
            {
                if (!dict.TryGetValue(key, out ICollection<string> col))
                {
                    ICollection<string> collection = new List<string>();
                    collection.Add(value);
                    dict.Add(key, collection);
                }
                else
                {
                    col.Add(value);
                }

                CollectionAddEventArgs<string> collectionAddEventArgs = new CollectionAddEventArgs<string>(dict[key], value);
                OnCollectionAdded?.Invoke(this, collectionAddEventArgs);
            }

            public void RemoveCollection(string key)
            {
                CollectionRemoveEventArgs<string> collectionRemoveEventArgs = new CollectionRemoveEventArgs<string>(dict[key]);
                dict.Remove(key);
                OnCollectionRemoved?.Invoke(this, collectionRemoveEventArgs);
            }
        }
    }
}