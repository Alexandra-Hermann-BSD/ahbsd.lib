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
            ITestClass<string> t1 = new TestClass<string>("Hello");
            ITestClass<object> t2 = new TestClass<object>("Hello");
            t1.OnChange += T1_OnChange;
            t2.OnChange += T2_OnChange;

            t1.Variable = "World";
            t2.Variable = 15;
            t1.Variable = string.Empty;
            t1.Variable = null;
            t2.Variable = null;
            t2.Variable = 0b1011101;
            t2.Variable = 25.9f;
            t2.Variable = 25.9;

            Console.WriteLine("Press any key to exit.");
            Console.Read();
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
