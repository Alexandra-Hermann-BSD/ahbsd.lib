using System;
using System.Collections.Generic;
using ahbsd.lib.EventArgs;
using ahbsd.lib.Exceptions;
using Xunit;

namespace Test_xUnit
{
    public class TestChanged
    {
        private static int nr;
        private readonly IDictionary<int, int?> apiKeys = new Dictionary<int, int?>();


        [Theory]
        [InlineData(null, 1.0)]
        [InlineData(0, 1.0)]
        [InlineData(3.14, 3.1415)]
        [InlineData(Math.PI, 3.14)]
        public void OnChangedTest(double? oldValue, double? newValue)
        {
            ITestClass<double?> testClass = new TestClass<double?, string>(oldValue, $"TC{nr}");
            apiKeys.Add(nr, TestClass<double?, string>.FindApiKey($"TC{nr}"));
            testClass.OnChange += TestClass_OnChange;
            testClass.Variable = newValue;
            Assert.NotEqual(oldValue, testClass.Variable);
            nr++;
        }

        private void TestClass_OnChange(object sender, ChangeEventArgs<double?> e)
        {
            TestClass<double?, string> castedSender = (TestClass<double?, string>)sender;
            string apiKey = null;

            if (apiKeys[nr].HasValue)
            {
                apiKey = TestClass<double?, string>.GetApiKey(apiKeys[nr].Value);
            }

            try
            {
                Assert.NotEqual(e.OldValue, e.NewValue);
                Assert.Equal(e.NewValue, castedSender.Variable);
                if (apiKeys[nr].HasValue)
                {
                    Assert.Equal(apiKey, $"TC{nr}");
                }
            }
            catch (Exception ex2)
            {
                Console.WriteLine($"A {ex2.GetType()} happened:");
                Console.WriteLine($"Message: {ex2.Message}");
            }
        }

        [Fact]
        public void TestChange()
        {
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
                double d = (double)t3.Variable;
                d *= (double)t2.Variable;
#pragma warning restore S1854
            }
            catch (Exception ex)
            {
                IGenericException<ITestClass<object>> exT3 = new Exception<ITestClass<object>>(ex.Message, t3, ex);
                Assert.IsType<Exception<ITestClass<object>>>(exT3);
            }
        }

        private void T3_OnChange(object sender, ChangeEventArgs<object> e)
        {
            Console.WriteLine("The variable from 't3' has changed:");
            Console.WriteLine("The sending object was: {0}", sender);
            Console.WriteLine(e.ToString());
            Assert.NotEqual(e.OldValue, e.NewValue);
            Console.WriteLine();
        }

        /// <summary>
        /// For changes on t2.
        /// </summary>
        /// <param name="sender">Sending object.</param>
        /// <param name="e">Event Arguments.</param>
        private void T2_OnChange(object sender, ChangeEventArgs<object> e)
        {
            Console.WriteLine("The variable from 't2' has changed:");
            Console.WriteLine("The sending object was: {0}", sender);
            Console.WriteLine(e.ToString());
            Assert.NotEqual(e.OldValue, e.NewValue);
            Console.WriteLine();
        }

        /// <summary>
        /// For changes on t1.
        /// </summary>
        /// <param name="sender">Sending object.</param>
        /// <param name="e">Event Arguments.</param>
        private void T1_OnChange(object sender, ChangeEventArgs<string> e)
        {
            Console.WriteLine("The variable from 't1' has changed:");
            Console.WriteLine("The sending object was: {0}", sender);
            Console.WriteLine(e.ToString());
            Assert.NotEqual(e.OldValue, e.NewValue);
            Console.WriteLine();
        }
    }
}
