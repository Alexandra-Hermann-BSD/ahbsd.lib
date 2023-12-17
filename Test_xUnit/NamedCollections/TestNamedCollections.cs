//
//  Copyright 2021  Alexandra Hermann – Beratung, Software, Design
//
//    Licensed under the Apache License, Version 2.0 (the "License");
//    you may not use this file except in compliance with the License.
//    You may obtain a copy of the License at
//
//        http://www.apache.org/licenses/LICENSE-2.0
//
//    Unless required by applicable law or agreed to in writing, software
//    distributed under the License is distributed on an "AS IS" BASIS,
//    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//    See the License for the specific language governing permissions and
//    limitations under the License.

using System;
using System.IO;
using ahbsd.lib.EventArgs;
using ahbsd.lib.Interfaces;
using ahbsd.lib.NamedCollections;
using ahbsd.lib.Tools;
using Xunit;

namespace Test_xUnit.NamedCollections
{
    public class TestNamedCollections
    {
        private static readonly ILogger testLogger = new Logger($"{Path.GetTempPath()}Test.log");

        [Fact]
        public void TestNamedCollection()
        {
            INamedList<int> l1 = new NamedList<int>("l1", 11);
            INamedCollection<int> nc1 = new NamedCollection<int>("NamedCollection 1 ", l1);
            nc1.OnNameChanged += Nc1_OnNameChanged;
            l1.OnNameChanged += Nc1_OnNameChanged;


            testLogger.Log(nc1);
            testLogger.Log(l1);

            l1.Name = "Named List #1";

            for (int i = 0; i < 11; i++)
            {
                nc1.Add(i);
            }

            nc1.Name = "NamedCollection 1";
            nc1.Name = "Collection 1, which is named.";

            testLogger.Log(nc1);
            testLogger.Log(l1);
            
            Assert.True(true);
        }


        private void Nc1_OnNameChanged(object sender, ChangeEventArgs<string> e)
        {
            testLogger.Log($"The named collections name has changed: The sending object was {sender.ToString()} ChangeEventArgs<string>: {e}");
            Assert.NotEqual(e.OldValue, e.NewValue);
        }
    }
}
