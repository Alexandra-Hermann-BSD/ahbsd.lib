using System;
using Xunit;
using ahbsd.lib;
using ahbsd.lib.Exceptions;
using System.Collections.Generic;
using ahbsd.lib.Tools;

namespace Test_xUnit
{
    public class UnitTest1
    {
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

        [Fact]
        public void TestPrime()
        {
            IList<ulong> numbers = new List<ulong>();
            bool isPrime;
            TimeSpan time;
            uint amount;
            string isPrimeString;

            for (ulong i = 0; i < 20; i++)
            {
                numbers.Add(i);
            }

            for (ulong i = 1990; i < 2170; i++)
            {
                numbers.Add(i);
            }

            numbers.Add(ulong.MaxValue);

            foreach (var nr in numbers)
            {
                isPrime = PrimeCheck.Check(nr);
                time = PrimeCheck.Time;
                amount = PrimeCheck.Amount;

                if (isPrime)
                {
                    isPrimeString = "is a prime number";
                }
                else
                {
                    isPrimeString = "is not a prime number";
                }

                Console.WriteLine(
                    "{0} {1}. It took {2} times in {3} m, {4} s, {5} ms to check.",
                    nr,
                    isPrimeString,
                    amount,
                    time.Minutes,
                    time.Seconds,
                    time.Milliseconds);
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
