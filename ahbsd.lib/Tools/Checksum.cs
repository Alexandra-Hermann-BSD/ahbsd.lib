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
namespace ahbsd.lib.Tools
{
    /// <summary>
    /// Class to calculate checksums.
    /// </summary>
    public static class Checksum
    {
        #region Checksum
        /// <summary>
        /// Gets the checksum of the given value.
        /// </summary>
        /// <param name="value">The given value.</param>
        /// <returns>The checksum of the given value.</returns>
        public static long GetChecksum(long value)
        {
            long result = 0;
            long positiveValue = value;

            if (!IsPositive(value))
            {
                positiveValue = value * -1;
            }

            char[] parts = positiveValue.ToString().ToCharArray();
            
            for (int i = 0; i < parts.Length; i++)
            {
                result += short.Parse(parts[i].ToString());
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
            long tmp = value;
            int length;

            do
            {
                tmp = GetChecksum(tmp);
                length = tmp.ToString().Length;
            } while (length > 1);

            return (short)tmp;
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

            if (value.HasValue)
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
            long? tmp = value;
            int length;

            if (value.HasValue)
            {
                do
                {
                    tmp = GetChecksum(tmp);
                    length = tmp.ToString().Length;
                } while (length > 1);

            }
            return (short?)tmp;
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
            ulong tmp = value;
            int length;

            do
            {
                tmp = GetChecksum(tmp);
                length = tmp.ToString().Length;
            } while (length > 1);

            return (ushort)tmp;
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

            if (value.HasValue)
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
            ulong? tmp = value;
            int length;

            if (value.HasValue)
            {
                do
                {
                    tmp = GetChecksum(tmp);
                    length = tmp.ToString().Length;
             
                } while (length > 1);

            }
            return (ushort?)tmp;
        }
        #endregion
        #region IsPositive
        /// <summary>
        /// Checks wheather value is positive or negative.
        /// </summary>
        /// <param name="value">The value to check.</param>
        /// <returns>
        /// <c>true</c> if value is positive, otherwise <c>false</c>.
        /// </returns>
        public static bool IsPositive(long value) => !value.ToString().Substring(0, 1).Equals("-");

        /// <summary>
        /// Checks wheather value is positive or negative.
        /// </summary>
        /// <param name="value">The value to check.</param>
        /// <returns>
        /// <c>true</c> if value is positive, otherwise <c>false</c>.
        /// </returns>
        public static bool IsPositive(long? value) => value.HasValue && IsPositive((long)value);

        /// <summary>
        /// Checks wheather value is positive or negative.
        /// </summary>
        /// <param name="value">The value to check.</param>
        /// <returns>
        /// <c>true</c> if value is positive, otherwise <c>false</c>.
        /// </returns>
        public static bool IsPositive(ulong value) => true;

        /// <summary>
        /// Checks wheather value is positive or negative.
        /// </summary>
        /// <param name="value">The value to check.</param>
        /// <returns>
        /// <c>true</c> if value is positive, otherwise <c>false</c>.
        /// </returns>
        public static bool IsPositive(ulong? value) => value.HasValue;

        /// <summary>
        /// Checks wheather value is positive or negative.
        /// </summary>
        /// <param name="value">The value to check.</param>
        /// <returns>
        /// <c>true</c> if value is positive, otherwise <c>false</c>.
        /// </returns>
        public static bool IsPositive(short value) => !value.ToString().Substring(0, 1).Equals("-");

        /// <summary>
        /// Checks wheather value is positive or negative.
        /// </summary>
        /// <param name="value">The value to check.</param>
        /// <returns>
        /// <c>true</c> if value is positive, otherwise <c>false</c>.
        /// </returns>
        public static bool IsPositive(short? value) => value.HasValue && IsPositive((short)value);
        #endregion
    }
}
