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
        private static int nr;
        private readonly IDictionary<int, int?> apiKeys = new Dictionary<int, int?>();
        private static readonly ILogger testLogger = new Logger($"{Path.GetTempPath()}Test.log");

        [Theory]
        [InlineData(null, 1.0)]
        [InlineData(0d, 1.0)]
        [InlineData(3.14, 3.1415)]
        [InlineData(Math.PI, 3.14)]
        public void OnChangedTest(double? oldValue, double? newValue)
        {
            var oldValueString = GetValueAsString(nameof(oldValue), oldValue);
            var newValueString = GetValueAsString(nameof(newValue), newValue);
            testLogger.Log($"Starting Theory {GetType().Name}.OnChangedTest({oldValueString}, {newValueString})");
            ITestClass<double?> testClass = new TestClass<double?, string>(oldValue, $"TC{nr}");
            apiKeys.Add(nr, TestClass<double?, string>.FindApiKey($"TC{nr}"));
            testClass.OnChange += TestClass_OnChange;
            testClass.Variable = newValue;
            Assert.NotEqual(oldValue, testClass.Variable);
            nr++;
            
            testLogger.Log($"Stopped Theory {GetType().Name}.OnChangedTest(oldValue: {oldValue}, newValue: {newValue}");
        }

        /// <summary>
        /// Gets the given value by it's name and value as <see cref="string"/>.
        /// </summary>
        /// <param name="valueName">The name of the value</param>
        /// <param name="value">The value</param>
        /// <returns>The given value by it's name and value as <see cref="string"/></returns>
        private static string GetValueAsString(string valueName, double? value)
            => ChangeEventArgs<double?>.GetValueAsString(valueName, value);

        private void TestClass_OnChange(object sender, ChangeEventArgs<double?> e)
        {
            if (sender is TestClass<double?, string> castedSender)
            {
                string apiKey = null;

                if (apiKeys[nr].HasValue)
                {
                    apiKey = TestClass<double?, string>.GetApiKey(apiKeys[nr].Value);
                }

                try
                {
                    Assert.True(e.AreDifferent);
                    Assert.NotEqual(e.OldValue, e.NewValue);
                    Assert.Equal(e.NewValue, castedSender.Variable);
                    if (apiKeys[nr].HasValue)
                    {
                        Assert.Equal(apiKey, $"TC{nr}");
                    }
                }
                catch (Exception ex2)
                {
                    testLogger.Log(ex2);
                }
            }
        }

        [Fact]
        public void TestChange()
        {
            testLogger.Log($"Starting Fact {GetType().Name}.TestChange");
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
            
            testLogger.Log($"Stopped Fact {GetType().Name}.TestChange");
        }

        private static void T3_OnChange(object sender, ChangeEventArgs<object> e) => T_OnChange(sender, "t3", e);

        /// <summary>
        /// For changes on t2.
        /// </summary>
        /// <param name="sender">Sending object.</param>
        /// <param name="e">Event Arguments.</param>
        private static void T2_OnChange(object sender, ChangeEventArgs<object> e) => T_OnChange(sender, "t2", e);

        /// <summary>
        /// For changes on t1.
        /// </summary>
        /// <param name="sender">Sending object.</param>
        /// <param name="e">Event Arguments.</param>
        private static void T1_OnChange(object sender, ChangeEventArgs<string> e) => T_OnChange(sender, "t1", e);

        private static void T_OnChange<T>(object sender, string valueName, ChangeEventArgs<T> e)
        {
            testLogger.Log(GetMessage(valueName, sender, e));
            Assert.True(e.AreDifferent);
            Assert.NotEqual(e.OldValue, e.NewValue);
        }

        private static string GetMessage<T>(string valueName, object sender, ChangeEventArgs<T> e)
            => $"The variable from '{valueName}' has changed: The sending object was: {sender}, ChangeEventArgs: {e}";
    }
}
