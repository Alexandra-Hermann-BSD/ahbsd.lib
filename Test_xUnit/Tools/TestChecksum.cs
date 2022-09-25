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
using Xunit;

namespace Test_xUnit.Tools
{
    /// <summary>
    /// Tests for <see cref="Checksum"/>.
    /// </summary>
    public class TestChecksum
    {

        /// <summary>
        /// Testing <see cref="Checksum.GetChecksum(long)"/> and <see cref="Checksum.GetFinalChecksum(long)"/>.
        /// </summary>
        /// <param name="expectedChecksum">The expected checksum</param>
        /// <param name="expectedFinalChecksum">The expected final checksum</param>
        /// <param name="tmpL">The number to get the checksums from</param>
        [Theory]
        [InlineData((long)2, (short)2, (long)11)]
        [InlineData((long)10, (short)1, (long)1234)]
        [InlineData((long)10, (short)1, (long)-1234)]
        public void TestCheckSumLong(long expectedChecksum, short expectedFinalChecksum, long tmpL)
        {
            Assert.Equal(expectedChecksum, Checksum.GetChecksum(tmpL));
            Assert.Equal(expectedFinalChecksum, Checksum.GetFinalChecksum(tmpL));
        }

        /// <summary>
        /// Testing <see cref="Checksum.GetChecksum(ulong)"/> and <see cref="Checksum.GetFinalChecksum(ulong)"/>.
        /// </summary>
        /// <param name="expectedChecksum">The expected checksum</param>
        /// <param name="expectedFinalChecksum">The expected final checksum</param>
        /// <param name="tmpL">The number to get the checksums from</param>
        [Theory]
        [InlineData((ulong)2, (ushort)2, (ulong)11)]
        [InlineData((ulong)10, (ushort)1, (ulong)1234)]
        public void TestCheckSumULong(ulong expectedChecksum, ushort expectedFinalChecksum, ulong tmpUL)
        {
            Assert.Equal(expectedChecksum, Checksum.GetChecksum(tmpUL));
            Assert.Equal(expectedFinalChecksum, Checksum.GetFinalChecksum(tmpUL));
        }

        /// <summary>
        /// Testing <see cref="Checksum.GetChecksum(long?)"/> and <see cref="Checksum.GetFinalChecksum(long?)"/>.
        /// </summary>
        /// <param name="expectedChecksum">The expected checksum</param>
        /// <param name="expectedFinalChecksum">The expected final checksum</param>
        /// <param name="tmpL">The number to get the checksums from</param>
        [Theory]
        [InlineData((long)2, (short)2, (long)11)]
        [InlineData((long)10, (short)1, (long)1234)]
        [InlineData((long)10, (short)1, (long)-1234)]
        [InlineData(null, null, null)]
        public void TestCheckSumNLong(long? expectedChecksum, short? expectedFinalChecksum, long? tmpNL)
        {
            Assert.Equal(expectedChecksum, Checksum.GetChecksum(tmpNL));
            Assert.Equal(expectedFinalChecksum, Checksum.GetFinalChecksum(tmpNL));
        }

        /// <summary>
        /// Testing <see cref="Checksum.GetChecksum(ulong?)"/> and <see cref="Checksum.GetFinalChecksum(ulong?)"/>.
        /// </summary>
        /// <param name="expectedChecksum">The expected checksum</param>
        /// <param name="expectedFinalChecksum">The expected final checksum</param>
        /// <param name="tmpL">The number to get the checksums from</param>
        [Theory]
        [InlineData((ulong)2, (ushort)2, (ulong)11)]
        [InlineData((ulong)10, (ushort)1, (ulong)1234)]
        [InlineData(null, null, null)]
        public void TestCheckSumUNLong(ulong? expectedChecksum, ushort? expectedFinalChecksum, ulong? tmpUNL)
        {
            Assert.Equal(expectedChecksum, Checksum.GetChecksum(tmpUNL));
            Assert.Equal(expectedFinalChecksum, Checksum.GetFinalChecksum(tmpUNL));
        }
    }
}
