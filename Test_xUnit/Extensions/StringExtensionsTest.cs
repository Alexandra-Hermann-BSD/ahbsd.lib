using ahbsd.lib.Extensions;
using Xunit;

namespace Test_xUnit.Extensions
{
    public class StringExtensionsTest
    {
        [Theory]
        [InlineData("bla", false)]
        [InlineData("", true)]
        [InlineData(" ", false)]
        [InlineData("                                   ", false)]
        [InlineData(null, true)]
        public void TestIsNullOrEmpty(string value, bool expectedResult)
        {
            var result = value.IsNullOrEmpty();
            Assert.Equal(expectedResult, result);
        }

        [Theory]
        [InlineData("bla", false)]
        [InlineData("", true)]
        [InlineData(" ", true)]
        [InlineData("                                   ", true)]
        [InlineData(null, true)]
        public void TestIsNullOrWhiteSpace(string value, bool expectedResult)
        {
            var result = value.IsNullOrWhiteSpace();
            Assert.Equal(expectedResult, result);
        }

        [Fact]
        public void TestGetIntList()
        {
            const string numberedList = "1,2, 5, 99 ,8";
            var intList = numberedList.GetIntList();
            Assert.Equal(1, intList[0]);
            Assert.Equal(2, intList[1]);
            Assert.Equal(5, intList[2]);
            Assert.Equal(99, intList[3]);
            Assert.Equal(8, intList[4]);
        }
    
        [Fact]
        public void TestGetIntListEmpty()
        {
            var numberedList = string.Empty;
            var intList = numberedList.GetIntList();
            Assert.Equal(0, intList.Count);
        }
    
        [Fact]
        public void TestGetIntListNull()
        {
            string numberedList = null;
            var intList = numberedList.GetIntList();
            Assert.Null(intList);
        }
    
        [Fact]
        public void TestGetIntDictEmpty()
        {
            var numberedList = string.Empty;
            var intList = numberedList.GetIntDictionary();
            Assert.Equal(0, intList.Count);
        }
    
        [Fact]
        public void TestGetIntDictNull()
        {
            string numberedList = null;
            var intList = numberedList.GetIntDictionary();
            Assert.Null(intList);
        }
    
        [Theory]
        [InlineData("1,2, 5, 99 ,8", 1,2,5,99,8)]
        [InlineData("1,2, 5, 99 ,a", 1,2,5,99,null)]
        [InlineData("1,2, 5, -99 ,8", 1,2,5,-99,8)]
        [InlineData("1,20, z, 99 ,8", 1,20,99,8, null)]
        [InlineData("1,zwei, fünf, 9 ,8", 1,9,8,null,null)]
        public void TestGetIntListTheory(string numberedList, int? nr0, int? nr1, int? nr2, int? nr3, int? nr4)
        {
            var intList = numberedList.GetIntList();

            if (intList.Count > 0 && nr0.HasValue)
            {
                Assert.Equal(nr0.Value, intList[0]);
            }

            if (intList.Count > 1 && nr1.HasValue)
            {
                Assert.Equal(nr1.Value, intList[1]);
            }

            if (intList.Count > 2 && nr2.HasValue)
            {
                Assert.Equal(nr2.Value, intList[2]);
            }

            if (intList.Count > 3 && nr3.HasValue)
            {
                Assert.Equal(nr3.Value, intList[3]);
            }

            if (intList.Count > 4 && nr4.HasValue)
            {
                Assert.Equal(nr4.Value, intList[4]);
            }
        }
    
        [Theory]
        [InlineData("1,2, 5, 99 ,8", 1,2,5,99,8)]
        [InlineData("1,2, 5, 99 ,a", 1,2,5,99,null)]
        [InlineData("1,2, 5, -99 ,8", 1,2,5,-99,8)]
        [InlineData("1,20, z, 99 ,8", 1,20,99,8, null)]
        [InlineData("1,zwei, fünf, 9 ,8", 1,9,8,null,null)]
        public void TestGetIntDictTheory(string numberedList, int? nr0, int? nr1, int? nr2, int? nr3, int? nr4)
        {
            var intList = numberedList.GetIntDictionary();

            if (intList.Count > 0 && nr0.HasValue)
            {
                Assert.Equal(nr0.Value, intList[0]);
            }

            if (intList.Count > 1 && nr1.HasValue)
            {
                Assert.Equal(nr1.Value, intList[1]);
            }

            if (intList.Count > 2 && nr2.HasValue)
            {
                Assert.Equal(nr2.Value, intList[2]);
            }

            if (intList.Count > 3 && nr3.HasValue)
            {
                Assert.Equal(nr3.Value, intList[3]);
            }

            if (intList.Count > 4 && nr4.HasValue)
            {
                Assert.Equal(nr4.Value, intList[4]);
            }
        }
    }
}