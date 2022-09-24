// 
//     ahbsd.lib
//     Test_xUnit
//     TestCollectionAddEventArgs.cs
// 
//     Copyright 2022 Alexandra Hermann – Beratung, Software, Design
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
// 

using System.Collections.Generic;
using ahbsd.lib.EventArgs;
using ahbsd.lib.Interfaces;
using Xunit;

namespace Test_xUnit.Collections;

public class TestCollectionAddEventArgs
{
    [Fact]
    public void SimpleTest()
    {
        ICollection<string> col1 = new List<string>();
        string item = "SimpleTest";
        col1.Add(item);
        ICollectionAddEventArgs<string> collectionAddEventArgs = new CollectionAddEventArgs<string>(col1, item);
            
        Assert.Equal(item, collectionAddEventArgs.Value);
        Assert.Equal(col1, collectionAddEventArgs.AffectedCollection);
    }
}