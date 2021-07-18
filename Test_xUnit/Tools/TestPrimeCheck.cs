//
//  Copyright 2021  Alexandra Hermann – Beratung, Software, Design
//
//    Licensed under the Apache License, Version 2.0 (the "License");
//    you may not use this file except in compliance with the License.
//    You may obtain a copy of the License at
//
//        http://www.apache.org/licenses/LICENSE-2.0
//
//    Unless required by applicable law or agreed to in writing, software
//    distributed under the License is distributed on an "AS IS" BASIS,
//    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//    See the License for the specific language governing permissions and
//    limitations under the License.
using System;
using ahbsd.lib.Tools;
using Xunit;
using System.Collections.Generic;

namespace Test_xUnit.Tools
{
    public class TestPrimeCheck
    {
        [Theory]
        [InlineData(true, (ulong)5)]
        [InlineData(true, (ulong)3)]
        [InlineData(true, (ulong)13)]
        [InlineData(false, (ulong)12)]
        [InlineData(false, (ulong)77)]
        [InlineData(false, (ulong)102)]
        [InlineData(false, ulong.MinValue)]
        [InlineData(false, ulong.MaxValue)]
        public void PrimeCheckTest(bool expectedPositive, ulong number)
        {
            Assert.Equal(expectedPositive, PrimeCheck.Check(number));
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
    }
}
