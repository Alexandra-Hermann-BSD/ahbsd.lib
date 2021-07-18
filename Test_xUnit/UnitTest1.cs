using System;
using System.Collections.Generic;
using ahbsd.lib;
using ahbsd.lib.Exceptions;
using ahbsd.lib.NamedCollections;
using ahbsd.lib.Password;
using ahbsd.lib.Tools;
using Xunit;

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

        [Fact]
        public void TestNamedCollection()
        {
            INamedList<int> l1 = new NamedList<int>("l1", 11);
            INamedCollection<int> nc1 = new NamedCollection<int>("NamedCollection 1 ", l1);
            nc1.OnNameChanged += Nc1_OnNameChanged;
            l1.OnNameChanged += Nc1_OnNameChanged;
            

            Console.WriteLine(nc1);
            Console.WriteLine(l1);

            l1.Name = "Named List #1";

            for (int i = 0; i < 11; i++)
            {
                nc1.Add(i);
            }

            nc1.Name = "NamedCollection 1";
            nc1.Name = "Collection 1, which is named.";

            Console.WriteLine(nc1);
            Console.WriteLine(l1);
        }

        [Fact]
        public void TestDictionaryOfNamedCollections()
        {
            IDictionaryOfNamedCollections<int, double> d1
                = new DictionaryOfNamedCollection<int, double>();
            IDictionaryOfNamedCollections<string, string> d2
                = new DictionaryOfNamedCollection<string, string>();

            d1.OnNamedCollectionAdded += D1_OnNamedCollectionAdded;
            d2.OnNamedCollectionAdded += D2_OnNamedCollectionAdded;

            d1.Add(1, 1.0, "Double");
            d1.Add(1, 1.1);

            d2.Add("Apple", "iPhone X", "Apple Devices");
            d2.Add("Apple", "iPad");
        }

        private void D2_OnNamedCollectionAdded(object sender, EventArgs<INamedCollection<string>> e)
        {
            Console.WriteLine("To {0} a new INamedCollection<string> was added:", sender);
            Console.WriteLine(e.Value);
        }

        private void D1_OnNamedCollectionAdded(object sender, EventArgs<INamedCollection<double>> e)
        {
            Console.WriteLine("To {0} a new INamedCollection<double> was added:", sender);
            Console.WriteLine(e.Value);
        }

        [Fact]
        public void TestDictionaryOfNamedLists()
        {
            IDictionaryOfNamedList<int, double> l1
                = new DictionaryOfNamedList<int, double>();
            IDictionaryOfNamedList<string, string> l2
                = new DictionaryOfNamedList<string, string>();

            l1.OnNamedListAdded += L1_OnNamedListAdded;
            l2.OnNamedListAdded += L2_OnNamedListAdded;

            l1.Add(1, "Double");
            l1.Add(1, 1.1);
            l1.Add(1, 1.2);
            l1.Add(1, 1.3);
            l1.Add(2, 1.1, "Double 2");
            l1.Add(2, 1.2);
            l1.Add(2, 1.3);

            l2.Add("Apple", "iPhone X", "Apple Devices");
            l2.Add("Apple", "iPad");
            l2.Add("Amazon", "Echo", "Amazon Devices");
        }

        private void L1_OnNamedListAdded(object sender, EventArgs<INamedList<double>> e)
        {
            Console.WriteLine("To {0} a new INamedList<double> was added:", sender);
            Console.WriteLine(e.Value);
        }

        private void L2_OnNamedListAdded(object sender, EventArgs<INamedList<string>> e)
        {
            Console.WriteLine("To {0} a new INamedList<string> was added:", sender);
            Console.WriteLine(e.Value);
        }

        private void Nc1_OnNameChanged(object sender, ChangeEventArgs<string> e)
        {
            Console.WriteLine("The named collections name has changed");
            Console.WriteLine("The sending object was {0}", sender);
            Console.WriteLine(e.ToString());
            Console.WriteLine();

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

        [Fact]
        public void TestPasswd()
        {
            IPassword p1 = new Password("Unsicher");
            p1.OnChange += P1_OnChange;

            p1.Value = "B<eSs3r üBe9R ©6&/|\\\"";
        }

        private void P1_OnChange(object sender, ChangeEventArgs<IPassword> e)
        {
            Console.WriteLine("The variable p1 has changed:");
            
        }

    }
}
