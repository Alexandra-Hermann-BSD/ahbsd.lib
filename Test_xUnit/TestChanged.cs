using System;
using System.Collections.Generic;
using System.IO;
using ahbsd.lib.EventArgs;
using ahbsd.lib.Exceptions;
using ahbsd.lib.Interfaces;
using ahbsd.lib.Tools;
using Xunit;

namespace Test_xUnit
{
    public class TestChanged
    {
        private static int _nr;
        private readonly IDictionary<int, int?> apiKeys = new Dictionary<int, int?>();
        private static readonly ILogger TestLogger = new Logger($"{Path.GetTempPath()}Test.log");

        [Theory]
        [InlineData(null, 1.0)]
        [InlineData(0d, 1.0)]
        [InlineData(3.14, 3.1415)]
        [InlineData(Math.PI, 3.14)]
        public void OnChangedTest(double? oldValue, double? newValue)
        {
            TestLogger.Log($"Starting Theory {GetType().Name}.OnChangedTest(oldValue: {oldValue}, newValue: {newValue}");
            ITestClass<double?> testClass = new TestClass<double?, string>(oldValue, $"TC{_nr}");
            apiKeys.Add(_nr, TestClass<double?, string>.FindApiKey($"TC{_nr}"));
            testClass.OnChange += TestClass_OnChange;
            testClass.Variable = newValue;
            Assert.NotEqual(oldValue, testClass.Variable);
            _nr++;
            
            TestLogger.Log($"Stopped Theory {GetType().Name}.OnChangedTest(oldValue: {oldValue}, newValue: {newValue}");
        }

        private void TestClass_OnChange(object sender, ChangeEventArgs<double?> e)
        {
            if (sender is TestClass<double?, string> castedSender)
            {
                string apiKey = null;

                if (apiKeys[_nr].HasValue)
                {
                    apiKey = TestClass<double?, string>.GetApiKey(apiKeys[_nr].Value);
                }

                try
                {
                    Assert.NotEqual(e.OldValue, e.NewValue);
                    Assert.Equal(e.NewValue, castedSender.Variable);
                    if (apiKeys[_nr].HasValue)
                    {
                        Assert.Equal(apiKey, $"TC{_nr}");
                    }
                }
                catch (Exception ex2)
                {
                    TestLogger.Log(ex2);
                }
            }
        }

        [Fact]
        public void TestChange()
        {
            TestLogger.Log($"Starting Fact {GetType().Name}.TestChange");
            ITestClass<string> t1 = new TestClass<string, object>("Hello", null);
            
            ITestClass<object> t2 = new TestClass<object, string>("Hello", "A100002");
            ITestClass<object> t3 = new TestClass<object, string>(0xAFFE, "0xAFFE");
            t1.OnChange += T1_OnChange;
            t2.OnChange += T2_OnChange;
            t3.OnChange += T3_OnChange;

            t1.Variable = "World";
            t2.Variable = 15;
            t1.Variable = string.Empty;
            t1.Variable = null;
            t2.Variable = null;
            t3.Variable = new NotFiniteNumberException("Test", 815.9);
            t2.Variable = 0b1011101;
            t2.Variable = 25.9f;
            t2.Variable = 25.9;
            t3.Variable = "0xAFFE";

            try
            {
#pragma warning disable S1854
                // here we need it explicitly due to generate an exception.
                // ReSharper disable once NotAccessedVariable
                // ReSharper disable once PossibleInvalidCastException
                double d = (double)t3.Variable;
                // ReSharper disable once RedundantAssignment
                d *= (double)t2.Variable;
#pragma warning restore S1854
            }
            catch (Exception ex)
            {
                IGenericException<ITestClass<object>> exT3 = new Exception<ITestClass<object>>(ex.Message, t3, ex);
                Assert.IsType<Exception<ITestClass<object>>>(exT3);
            }
            
            TestLogger.Log($"Stopped Fact {GetType().Name}.TestChange");
        }

        private void T3_OnChange(object sender, ChangeEventArgs<object> e)
        {
            TestLogger.Log(GetMessage("t3", sender, e));
            Assert.NotEqual(e.OldValue, e.NewValue);
        }

        /// <summary>
        /// For changes on t2.
        /// </summary>
        /// <param name="sender">Sending object.</param>
        /// <param name="e">Event Arguments.</param>
        private void T2_OnChange(object sender, ChangeEventArgs<object> e)
        {
            TestLogger.Log(GetMessage("t2", sender, e));
            Assert.NotEqual(e.OldValue, e.NewValue);
        }

        /// <summary>
        /// For changes on t1.
        /// </summary>
        /// <param name="sender">Sending object.</param>
        /// <param name="e">Event Arguments.</param>
        private void T1_OnChange(object sender, ChangeEventArgs<string> e)
        {
            TestLogger.Log(GetMessage("t1", sender, e));
            Assert.NotEqual(e.OldValue, e.NewValue);
        }

        private static string GetMessage<T>(string valueName, object sender, ChangeEventArgs<T> e)
            => $"The variable from '{valueName}' has changed: The sending object was: {sender.ToString()}, ChangeEventArgs: {e}";
    }
}
