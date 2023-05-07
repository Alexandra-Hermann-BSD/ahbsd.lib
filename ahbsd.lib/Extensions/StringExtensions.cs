// 
//     ahbsd.lib
//     ahbsd.lib
//     StringExtensions.cs
// 
//     Copyright 2023 Alexandra Hermann – Beratung, Software, Design
// 
//     Licensed under the Apache License, Version 2.0 (the "License");
//     you may not use this file except in compliance with the License.
//     You may obtain a copy of the License at
// 
//         http://www.apache.org/licenses/LICENSE-2.0
// 
//     Unless required by applicable law or agreed to in writing, software
//     distributed under the License is distributed on an "AS IS" BASIS,
//     WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//     See the License for the specific language governing permissions and
//     limitations under the License.
// 

using System.Collections.Generic;

namespace ahbsd.lib.Extensions
{
    /// <summary>
    /// A static class for extensions for the <see cref="string"/> class.
    /// </summary>
    public static class StringExtensions
    {
        /// <summary>
        /// Indicates whether the specified string is <c>null</c> or an empty string ("").
        /// </summary>
        /// <param name="value">The string to test.</param>
        /// <returns><c>true</c> if the value parameter is <c>null</c> or an empty string (""); otherwise, <c>false</c>.</returns>
        public static bool IsNullOrEmpty(this string value) => string.IsNullOrEmpty(value);

        /// <summary>
        /// Indicates whether a specified string is <c>null</c>, empty, or consists only of white-space characters.
        /// </summary>
        /// <param name="value">The string to test.</param>
        /// <returns><c>true</c> if the value parameter is <c>null</c> or <see cref="string.Empty"/>, or if value consists exclusively of white-space characters.</returns>
        public static bool IsNullOrWhiteSpace(this string value) => string.IsNullOrWhiteSpace(value);

        /// <summary>
        /// Gets an integer list from a string with <paramref name="splitter"/> seperated integer values.
        /// </summary>
        /// <param name="value">The string with <paramref name="splitter"/> seperated integer values</param>
        /// <param name="splitter">[optional] splitter; by default: ','</param>
        /// <returns>If <paramref name="value"/> isn't <c>null</c>, a <see cref="IList{T}"/> of the found integer values; otherwise <c>null</c></returns>
        /// <example>"1, 0, 88 , -11,2" would return a list with {1, 0, 88, -11, 2}</example>
        public static IList<int> GetIntList(this string value, char splitter = ',')
        {
            IList<int> result = null;

            if (value != null)
            {
                result = new List<int>();

                foreach (var s in value.Split(splitter))
                {
                    if (int.TryParse(s.Trim(), out var i))
                    {
                        result.Add(i);
                    }
                }
            }

            return result;
        }
    
        /// <summary>
        /// Gets an integer dictionary from a string with <paramref name="splitter"/> seperated integer values.
        /// The first value of the dictionary is the position.
        /// </summary>
        /// <param name="value">The string with <paramref name="splitter"/> seperated integer values</param>
        /// <param name="splitter">[optional] splitter; by default: ','</param>
        /// <returns>If <paramref name="value"/> isn't <c>null</c>, a <see cref="IDictionary{TKey,TValue}"/> of the found integer values; otherwise <c>null</c></returns>
        /// <example>"1, 0, 88 , -11,2" would return a dictionary with { {0,1}, {1, 0}, {2, 88}, {3,-11}, {4, 2} }</example>
        public static IDictionary<int, int> GetIntDictionary(this string value, char splitter = ',')
        {
            IDictionary<int, int> result = null;

            if (value?.GetIntList(splitter) is { } list)
            {
                result = new Dictionary<int, int>(list.Count);

                for (var i = 0; i < list.Count; i++)
                {
                    result.Add(i, list[i]);
                }
            }

            return result;
        }
    }
}