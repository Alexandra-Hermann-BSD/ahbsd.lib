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
using ahbsd.lib.Password;
using Xunit;

namespace Test_xUnit.Password
{
    public class TestCharacteristicDictionary
    {
        [Theory]
        [InlineData("Test", false, true, true, false, false)]
        [InlineData("Test 1", true, true, true, false, true)]
        [InlineData("Test %ü", false, true, true, true, true)]
        [InlineData("Test%", false, true, true, true, false)]
        [InlineData("Testü", false, true, true, true, false)]
        [InlineData("test", false, true, false, false, false)]
        [InlineData("123", true, false, false, false, false)]
        [InlineData("123 456", true, false, false, false, true)]
        public void CharacteristicDictionaryTest1(string text, bool expectedNumeric, bool expectedLower, bool expectedCapital, bool expectedSpecial, bool expectedSpace)
        {
            ICharacteristicDictionary dict1;
            IPassword password = new ahbsd.lib.Password.Password(text);
            dict1 = password.Characteristics;

            Assert.Equal(expectedNumeric, dict1[Charasteristic.Numeric]);
            Assert.Equal(expectedLower, dict1[Charasteristic.LowercaseLetter]);
            Assert.Equal(expectedCapital, dict1[Charasteristic.CapitalLetter]);
            Assert.Equal(expectedSpecial, dict1[Charasteristic.SpecialCharacter]);
            Assert.Equal(expectedSpace, dict1[Charasteristic.Space]);
        }
    }
}
