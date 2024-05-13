
using ahbsd.lib.ApiKey;
using Xunit;

namespace Test_xUnit.ApiKey
{
    public class ApiKeyTest
    {

        [Theory]
        [InlineData("Test")]
        [InlineData("Welt")]
        [InlineData("hallo")]
        public void ApiKeyHolderTest(string key)
        {
            ApiKeyHolder<string> testKeyHolder = new ApiKeyHolder<string>(key);
            var keyId = ApiKeyHolder<string>.FindApiKey(key);
            Assert.True(keyId >= 0);
            var hc = testKeyHolder.GetHashCode();
            Assert.True(hc != 0);
            var isKeyExistent = testKeyHolder.Equals(key);
            Assert.False(isKeyExistent);
            Assert.NotNull(testKeyHolder);
            var currentIdx = ApiKeyHolder<string>.FindApiKey(key);

            if (currentIdx > 0)
            {
                var previousKey = ApiKeyHolder<string>.GetApiKey(currentIdx.Value - 1);
                Assert.NotEqual(previousKey, key);
            }
        }
    }
}