﻿//
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
using ahbsd.lib;
using ahbsd.lib.NamedCollections;
using Xunit;

namespace Test_xUnit.NamedCollections
{
    public class TestDictionaryOfNamedCollection
    {
        [Fact]
        public void TestDictionaryOfNamedCollections()
        {
            IDictionaryOfNamedCollections<int, double> d1
                = new DictionaryOfNamedCollection<int, double>();
            IDictionaryOfNamedCollections<string, string> d2
                = new DictionaryOfNamedCollection<string, string>();

            d1.OnNamedCollectionAdded += D1_OnNamedCollectionAdded;
            d2.OnNamedCollectionAdded += D2_OnNamedCollectionAdded;

            d1.Add(1, 1.0, "Double");
            d1.Add(1, 1.1);

            d2.Add("Apple", "iPhone X", "Apple Devices");
            d2.Add("Apple", "iPad");
        }

        private void D2_OnNamedCollectionAdded(object sender, EventArgs<INamedCollection<string>> e)
        {
            Console.WriteLine("To {0} a new INamedCollection<string> was added:", sender);
            Console.WriteLine(e.Value);
        }

        private void D1_OnNamedCollectionAdded(object sender, EventArgs<INamedCollection<double>> e)
        {
            Console.WriteLine("To {0} a new INamedCollection<double> was added:", sender);
            Console.WriteLine(e.Value);
        }

        [Fact]
        public void TestDictionaryOfNamedLists()
        {
            IDictionaryOfNamedList<int, double> l1
                = new DictionaryOfNamedList<int, double>();
            IDictionaryOfNamedList<string, string> l2
                = new DictionaryOfNamedList<string, string>();

            l1.OnNamedListAdded += L1_OnNamedListAdded;
            l2.OnNamedListAdded += L2_OnNamedListAdded;

            l1.Add(1, "Double");
            l1.Add(1, 1.1);
            l1.Add(1, 1.2);
            l1.Add(1, 1.3);
            l1.Add(2, 1.1, "Double 2");
            l1.Add(2, 1.2);
            l1.Add(2, 1.3);

            l2.Add("Apple", "iPhone X", "Apple Devices");
            l2.Add("Apple", "iPad");
            l2.Add("Amazon", "Echo", "Amazon Devices");
        }

        private void L1_OnNamedListAdded(object sender, EventArgs<INamedList<double>> e)
        {
            Console.WriteLine("To {0} a new INamedList<double> was added:", sender);
            Console.WriteLine(e.Value);
        }

        private void L2_OnNamedListAdded(object sender, EventArgs<INamedList<string>> e)
        {
            Console.WriteLine("To {0} a new INamedList<string> was added:", sender);
            Console.WriteLine(e.Value);
        }
    }
}