
using ahbsd.lib.ApiKey;
using Xunit;

namespace Test_xUnit.ApiKey;

public class ApiKeyTest
{

    [Theory]
    [InlineData("Test")]
    [InlineData("Welt")]
    [InlineData("hallo")]
    public void ApiKeyHolderTest(string key)
    {
        ApiKeyHolder<string> testKeyHolder = new ApiKeyHolder<string>(key);
        Assert.True(ApiKeyHolder<string>.FindApiKey(key) is >= 0);
        int hc = testKeyHolder.GetHashCode();
        Assert.True(hc != 0);
        Assert.False(testKeyHolder.Equals(key));
        Assert.True(testKeyHolder != null);
        int? currentIdx = ApiKeyHolder<string>.FindApiKey(key);

        if (currentIdx is > 0)
        {
            string previousKey = ApiKeyHolder<string>.GetApiKey(currentIdx.Value - 1);
            Assert.NotEqual(previousKey, key);
        }
    }
}