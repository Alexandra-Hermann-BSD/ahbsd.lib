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

using ahbsd.lib.Tools;
using JetBrains.Annotations;
using Xunit;

namespace Test_xUnit.Tools
{
    [TestSubject(typeof(PrimeCheck))]
    public class TestPrimeCheck
    {
        [Theory]
        [InlineData(true, (ulong)5)]
        [InlineData(true, (ulong)3)]
        [InlineData(true, (ulong)13)]
        [InlineData(false, (ulong)12)]
        [InlineData(false, (ulong)77)]
        [InlineData(false, (ulong)102)]
        [InlineData(false, ulong.MinValue)]
        [InlineData(false, ulong.MaxValue)]
        public void PrimeCheckTest(bool expectedPositive, ulong number)
        {
            Assert.Equal(expectedPositive, PrimeCheck.Check(number));
        }
        
    }
}
