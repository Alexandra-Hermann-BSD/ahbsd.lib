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
using ahbsd.lib.Tools;
using Xunit;
namespace Test_xUnit
{
    /// <summary>
    /// Class to Test the IsPositive() functions.
    /// </summary>
    public class TestIsPositive
    {
        [Theory]
        [InlineData(true, (long)1)]
        [InlineData(false, (long)-1)]
        [InlineData(true, (long)0)]
        [InlineData(true, long.MaxValue)]
        [InlineData(false, long.MinValue)]
        public void IsPositiveLongTest(bool expectedPositive, long number)
        {
            Assert.Equal(expectedPositive, Checksum.IsPositive(number));
        }

        [Theory]
        [InlineData(true, (ulong)1)]
        [InlineData(true, ulong.MaxValue)]
        [InlineData(true, ulong.MinValue)]
        public void IsPositiveULongTest(bool expectedPositive, ulong number)
        {
            Assert.Equal(expectedPositive, Checksum.IsPositive(number));
        }

        [Theory]
        [InlineData(true, (short)1)]
        [InlineData(false, (short)-1)]
        [InlineData(true, (short)0)]
        [InlineData(true, short.MaxValue)]
        [InlineData(false, short.MinValue)]
        public void IsPositiveShortTest(bool expectedPositive, short number)
        {
            Assert.Equal(expectedPositive, Checksum.IsPositive(number));
        }

        [Theory]
        [InlineData(true, (ushort)1)]
        [InlineData(true, ushort.MaxValue)]
        [InlineData(true, ushort.MinValue)]
        public void IsPositiveUShortTest(bool expectedPositive, ushort number)
        {
            Assert.Equal(expectedPositive, Checksum.IsPositive(number));
        }

        [Theory]
        [InlineData(true, (long)1)]
        [InlineData(false, (long)-1)]
        [InlineData(true, (long)0)]
        [InlineData(false, null)]
        [InlineData(true, long.MaxValue)]
        [InlineData(false, long.MinValue)]
        public void IsPositiveNLongTest(bool expectedPositive, long? number)
        {
            Assert.Equal(expectedPositive, Checksum.IsPositive(number));
        }

        [Theory]
        [InlineData(true, (ulong)1)]
        [InlineData(false, null)]
        [InlineData(true, ulong.MaxValue)]
        [InlineData(true, ulong.MinValue)]
        public void IsPositiveUNLongTest(bool expectedPositive, ulong? number)
        {
            Assert.Equal(expectedPositive, Checksum.IsPositive(number));
        }

        [Theory]
        [InlineData(true, (short)1)]
        [InlineData(false, (short)-1)]
        [InlineData(true, (short)0)]
        [InlineData(false, null)]
        [InlineData(true, short.MaxValue)]
        [InlineData(false, short.MinValue)]
        public void IsPositiveNShortTest(bool expectedPositive, short? number)
        {
            Assert.Equal(expectedPositive, Checksum.IsPositive(number));
        }

        [Theory]
        [InlineData(true, (ushort)1)]
        [InlineData(false, null)]
        [InlineData(true, ushort.MaxValue)]
        [InlineData(true, ushort.MinValue)]
        public void IsPositiveUNShortTest(bool expectedPositive, ushort? number)
        {
            Assert.Equal(expectedPositive, Checksum.IsPositive(number));
        }
    }
}
