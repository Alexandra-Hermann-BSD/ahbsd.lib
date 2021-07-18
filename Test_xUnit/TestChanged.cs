using System;
using ahbsd.lib;
using ahbsd.lib.Exceptions;
using ahbsd.lib.ApiKey;
using ahbsd.lib.Password;
using Xunit;
using System.Collections;
using System.Collections.Generic;

namespace Test_xUnit
{
    public class TestChanged
    {
        static int nr = 0;
        IDictionary<int, int?> apiKeys = new Dictionary<int, int?>();


        [Theory]
        [InlineData(null, 1.0)]
        [InlineData(0, 1.0)]
        [InlineData(3.14, 3.1415)]
        [InlineData(Math.PI, 3.14)]
        public void OnChangedTest(double? oldValue, double? newValue)
        {
            ITestClass<double?, string> testClass = new TestClass<double?, string>(oldValue, $"TC{nr}");
            apiKeys.Add(nr, TestClass<double?, string>.FindApiKey($"TC{nr}"));
            testClass.OnChange += TestClass_OnChange;
            testClass.Variable = newValue;
            nr++;
        }

        private void TestClass_OnChange(object sender, ChangeEventArgs<double?> e)
        {
            TestClass<double?, string> castetSender = (TestClass<double?, string>)sender;
            string apiKey = null;

            if (apiKeys[nr].HasValue)
            {
                apiKey = TestClass<double?, string>.GetApiKey(apiKeys[nr].Value);
            }

            try
            {
                Assert.NotEqual(e.OldValue, e.NewValue);
                Assert.Equal(e.NewValue, castetSender.Variable);
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
            ITestClass<string, object> t1 = new TestClass<string, object>("Hello", null);
            ITestClass<object, string> t2, t3;
            IGenericException<ITestClass<object, string>> exT3;
            double d;
            t2 = new TestClass<object, string>("Hello", "A100002");
            t3 = new TestClass<object, string>(0xAFFE, "0xAFFE");
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
                d = (double)t3.Variable;
                d *= (double)t2.Variable;
            }
            catch (Exception ex)
            {
                exT3 = new Exception<ITestClass<object, string>>(ex.Message, t3);
            }
        }

        private void T3_OnChange(object sender, ChangeEventArgs<object> e)
        {
            Console.WriteLine("The variable from 't3' has changed:");
            Console.WriteLine("The sending object was: {0}", sender);
            Console.WriteLine(e.ToString());
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
            Console.WriteLine();
        }
    }
}
