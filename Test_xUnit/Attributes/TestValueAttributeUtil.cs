// 
//     ahbsd.lib
//     Test_xUnit
//     TestValueAttributeUtil.cs
// 
//     Copyright 2023 Alexandra Hermann – Beratung, Software, Design
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

using ahbsd.lib.Attributes;
using ahbsd.lib.Interfaces;
using Xunit;

namespace Test_xUnit.Attributes
{
    public class TestValueAttributeUtil
    {
        [Fact]
        public void TestGetter()
        {
            var t1 = new Testclass1();
            var atr = ValueAttributeUtil.GetValueAttribute(t1, out ValueAttributeUtil util);
            
            Assert.NotNull(util);
            Assert.NotNull(atr);
        }
    }

    [Value(5)]
    internal class Testclass1
    {
        public Testclass1()
        {
            //
        }
    }
}