using System;
using ahbsd.lib;

namespace Test
{
    /// <summary>
    /// The test program.
    /// </summary>
    class Program
    {
        /// <summary>
        /// Running…
        /// </summary>
        /// <param name="args">Possible arguments.</param>
        static void Main(string[] args)
        {
            ITestClass<string, object> t1 = new TestClass<string, object>("Hello", null);
            ITestClass<object, string> t2, t3;
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

            Console.WriteLine("Press any key to exit.");
            Console.Read();
        }

        private static void T3_OnChange(object sender, ChangeEventArgs<object> e)
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
        private static void T2_OnChange(object sender, ChangeEventArgs<object> e)
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
        private static void T1_OnChange(object sender, ChangeEventArgs<string> e)
        {
            Console.WriteLine("The variable from 't1' has changed:");
            Console.WriteLine("The sending object was: {0}", sender);
            Console.WriteLine(e.ToString());
            Console.WriteLine();
        }
    }
}
