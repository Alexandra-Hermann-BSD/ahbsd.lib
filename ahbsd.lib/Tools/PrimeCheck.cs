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
namespace ahbsd.lib.Tools
{
    /// <summary>
    /// Class for checking, wheather a given number is a prime number or not.
    /// </summary>
    public static class PrimeCheck
    {
        /// <summary>
        /// Gets the time it took for the last <see cref="Check(ulong)"/>.
        /// </summary>
        /// <value>
        /// The time it took for the last <see cref="Check(ulong)"/>.
        /// </value>
        public static TimeSpan Time { get; private set; }
        /// <summary>
        /// Gets the amount of loops it took for the last <see cref="Check(ulong)"/>.
        /// </summary>
        /// <value>
        /// The amount of loops it took for the last <see cref="Check(ulong)"/>.
        /// </value>
        public static uint Amount { get; private set; }

        /// <summary>
        /// Checks wheather nr is a prime number or not.
        /// </summary>
        /// <param name="nr">The number to check.</param>
        /// <returns>
        /// <c>true</c> when nr is a prime number, otherwise <c>false</c>.
        /// </returns>
        public static bool Check(ulong nr)
        {
            ulong half, modHalf, loops;
            bool result = true;
            DateTime start, end;

            loops = 0;
            start = DateTime.Now;

            modHalf = nr % 2;

            if (modHalf != 0)
            {
                half = nr / 2;

                for (ulong i = 3; i <= half; i++)
                {
                    if (nr % i == 0)
                    {
                        result = false;
                        loops = i - 3;
                        break;
                    }
                    loops = i - 3;
                }
            }
            else
            {
                result = false;
            }

            end = DateTime.Now;
            Time = end.Subtract(start);

            Amount = (uint)loops;

            return result;
        }
    }
}
