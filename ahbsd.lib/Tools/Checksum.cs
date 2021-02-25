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
    /// Class to calculate checksums.
    /// </summary>
    public static class Checksum
    {
        /// <summary>
        /// Gets the checksum of the given value.
        /// </summary>
        /// <param name="value">The given value.</param>
        /// <returns>The checksum of the given value.</returns>
        public static long GetChecksum(long value)
        {
            long result = 0;
            char[] parts = value.ToString().ToCharArray();
            bool positive = IsPositiv(value);

            if (positive)
            {
                for (int i = 0; i < parts.Length; i++)
                {
                    result += short.Parse(parts[i].ToString());
                }
            }
            else
            {
                for (int i = 1; i < parts.Length; i++)
                {
                    result += short.Parse(parts[i].ToString());
                }
                result *= -1;
            }

            return result;
        }

        /// <summary>
        /// Gets the final checksum from a given value.
        /// </summary>
        /// <param name="value">The given value.</param>
        /// <returns>The final checksum of the given value.</returns>
        public static short GetFinalChecksum(long value)
        {
            short result;
            long tmp = value;
            int length;
            bool positive = IsPositiv(value);

            do
            {
                tmp = GetChecksum(tmp);
                length = tmp.ToString().Length;
                if (!positive)
                {
                    length--;
                }
            } while (length > 1);

            result = (short)tmp;
            return result;
        }

        /// <summary>
        /// Gets the checksum of the given value.
        /// </summary>
        /// <param name="value">The given value.</param>
        /// <returns>
        /// The checksum of the given value or <c>null</c> if value is as well
        /// <c>null</c>.
        /// </returns>
        public static long? GetChecksum(long? value)
        {
            long? result = null;

            if (value != null)
            {
                result = GetChecksum((long)value);
            }

            return result;
        }

        /// <summary>
        /// Gets the final checksum from a given value.
        /// </summary>
        /// <param name="value">The given value.</param>
        /// <returns>The final checksum of the given value.</returns>
        public static short? GetFinalChecksum(long? value)
        {
            short? result;
            long? tmp = value;
            int length;
            bool positive = false;

            if (value != null)
            {
                positive = IsPositiv((long)value);
            }

            do
            {
                tmp = GetChecksum(tmp);
                if (tmp != null)
                {
                    length = tmp.ToString().Length;
                    if (!positive)
                    {
                        length--;
                    }
                }
                else
                {
                    length = 0;
                }
            } while (length > 1);

            result = (short?)tmp;
            return result;
        }


        /// <summary>
        /// Gets the checksum of the given value.
        /// </summary>
        /// <param name="value">The given value.</param>
        /// <returns>The checksum of the given value.</returns>
        public static ulong GetChecksum(ulong value)
        {
            ulong result = 0;
            char[] parts = value.ToString().ToCharArray();

            for (int i = 0; i < parts.Length; i++)
            {
                result += ushort.Parse(parts[i].ToString());
            }
           
            return result;
        }

        /// <summary>
        /// Gets the final checksum from a given value.
        /// </summary>
        /// <param name="value">The given value.</param>
        /// <returns>The final checksum of the given value.</returns>
        public static ushort GetFinalChecksum(ulong value)
        {
            ushort result;
            ulong tmp = value;
            int length;

            do
            {
                tmp = GetChecksum(tmp);
                length = tmp.ToString().Length;
            } while (length > 1);

            result = (ushort)tmp;
            return result;
        }

        /// <summary>
        /// Gets the checksum of the given value.
        /// </summary>
        /// <param name="value">The given value.</param>
        /// <returns>
        /// The checksum of the given value or <c>null</c> if value is as well
        /// <c>null</c>.
        /// </returns>
        public static ulong? GetChecksum(ulong? value)
        {
            ulong? result = null;

            if (value != null)
            {
                result = GetChecksum((ulong)value);
            }

            return result;
        }

        /// <summary>
        /// Gets the final checksum from a given value.
        /// </summary>
        /// <param name="value">The given value.</param>
        /// <returns>The final checksum of the given value.</returns>
        public static ushort? GetFinalChecksum(ulong? value)
        {
            ushort? result;
            ulong? tmp = value;
            int length;

            do
            {
                tmp = GetChecksum(tmp);
                if (tmp != null)
                {
                    length = tmp.ToString().Length;
                }
                else
                {
                    length = 0;
                }
            } while (length > 1);

            result = (ushort?)tmp;
            return result;
        }

        /// <summary>
        /// Checks wheather value is positive or negative.
        /// </summary>
        /// <param name="value">The value to check.</param>
        /// <returns>
        /// <c>true</c> if value is positive, otherwise <c>false</c>.
        /// </returns>
        public static bool IsPositiv(long value)
        {
            bool result;

            char[] tmp = value.ToString().ToCharArray();
            result = !tmp[0].Equals('-');

            return result;
        }

        /// <summary>
        /// Checks wheather value is positive or negative.
        /// </summary>
        /// <param name="value">The value to check.</param>
        /// <returns>
        /// <c>true</c> if value is positive, otherwise <c>false</c>.
        /// </returns>
        public static bool IsPositive(long? value)
        {
            bool result = false;

            if (value != null)
            {
                result = IsPositiv((long)value);
            }

            return result;
        }

        /// <summary>
        /// Checks wheather value is positive or negative.
        /// </summary>
        /// <param name="value">The value to check.</param>
        /// <returns>
        /// <c>true</c> if value is positive, otherwise <c>false</c>.
        /// </returns>
        public static bool IsPositiv(ulong value)
        {
            return true;
        }

        /// <summary>
        /// Checks wheather value is positive or negative.
        /// </summary>
        /// <param name="value">The value to check.</param>
        /// <returns>
        /// <c>true</c> if value is positive, otherwise <c>false</c>.
        /// </returns>
        public static bool IsPositive(ulong? value)
        {
            bool result = false;

            if (value != null)
            {
                result = true;
            }

            return result;
        }

        /// <summary>
        /// Checks wheather value is positive or negative.
        /// </summary>
        /// <param name="value">The value to check.</param>
        /// <returns>
        /// <c>true</c> if value is positive, otherwise <c>false</c>.
        /// </returns>
        public static bool IsPositiv(short value)
        {
            bool result;

            char[] tmp = value.ToString().ToCharArray();
            result = !tmp[0].Equals('-');

            return result;
        }

        /// <summary>
        /// Checks wheather value is positive or negative.
        /// </summary>
        /// <param name="value">The value to check.</param>
        /// <returns>
        /// <c>true</c> if value is positive, otherwise <c>false</c>.
        /// </returns>
        public static bool IsPositive(short? value)
        {
            bool result = false;

            if (value != null)
            {
                result = IsPositiv((long)value);
            }

            return result;
        }



    }
}
