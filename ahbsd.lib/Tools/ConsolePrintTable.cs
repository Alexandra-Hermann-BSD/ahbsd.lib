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
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Data;
using System.Linq;

namespace ahbsd.lib.Tools
{
    /// <summary>
    /// Static class to print a <see cref="DataTable"/> to console.
    /// </summary>
    public static class ConsolePrintTable
    {
        private const int NOT_SET = -1;
        
        /// <summary>
        /// Prints a table on console.
        /// </summary>
        /// <param name="table">The table to print.</param>
        public static void Print(DataTable table)
        {
            IDictionary<string, int> lengthPerCol = GetSize(table);
            var maxCols = table.Columns.Count;
            var currentCol = 0;

            var maxLines = lengthPerCol.Sum(item => item.Value + 1);
            maxLines++;

            Console.WriteLine();
            Console.WriteLine("".PadLeft(maxLines, '–'));
            Console.WriteLine(GetPart(table.TableName, true, maxLines - 2, true));
            Console.WriteLine("".PadLeft(maxLines, '–'));

            foreach (DataColumn col in table.Columns)
            {
                if (currentCol < maxCols - 1)
                {
                    Console.Write(GetPart(col.Caption, false, lengthPerCol[col.ColumnName]));
                }
                else
                {
                    Console.Write(GetPart(col.Caption, true, lengthPerCol[col.ColumnName]));
                    Console.WriteLine();
                }
                currentCol++;
            }

            Console.WriteLine("".PadLeft(maxLines, '='));

            foreach (DataRow row in table.Rows)
            {
                currentCol = 0;
                foreach (KeyValuePair<string, int> item in lengthPerCol)
                {
                    var tmpData = currentCol < maxCols - 1
                        ? GetPart(row[item.Key].ToString(), false, item.Value)
                        : GetPart(row[item.Key].ToString(), true, item.Value);
                    Console.Write(tmpData);
                    currentCol++;
                }
                Console.WriteLine();
            }

            Console.WriteLine("".PadLeft(maxLines, '–'));
            Console.WriteLine();
        }

        /// <summary>
        /// Gets a part to print with the value to print, the info of it is the
        /// last part and the length to use.
        /// </summary>
        /// <param name="val">The value.</param>
        /// <param name="last">The info, if it is the last part.</param>
        /// <param name="length">The length to use.</param>
        /// <param name="left">[optional] to put it on the left side.</param>
        /// <returns>The calculated part.</returns>
        private static string GetPart(string val, bool last, int length, bool left = false)
        {
            var result = $"{val}";

            if (length > val.Length)
            {
                result = left ? val.PadRight(length) : val.PadLeft(length);
            }

            result = !last ? $"|{result}" : $"|{result}|";

            return result;
        }

        /// <summary>
        /// Gets a dictionary with the name and width of each column of the
        /// given table.
        /// </summary>
        /// <param name="table">The given table.</param>
        /// <returns>
        /// A dictionary with the name and width off each column of the given table.
        /// </returns>
        private static IDictionary<string, int> GetSize(DataTable table)
        {
            IDictionary<string, int> result = new Dictionary<string, int>(table.Columns.Count);
            IDictionary<string, int> minLength = new Dictionary<string, int>(table.Columns.Count);
            foreach (DataColumn column in table.Columns)
            {
                result.Add(column.ColumnName, column.MaxLength);
                minLength.Add(column.ColumnName, column.Caption.Length);
            }

            ICollection<string> keys = new Collection<string>();

            foreach (var key in result.Keys)
            {
                keys.Add(key);
            }

            WalkThroughDataRow(table, keys, result, minLength);

            foreach (var key in minLength.Keys)
            {
                result[key] = minLength[key];
            }

            return result;
        }

        /// <summary>
        /// Walks through a given <see cref="DataTable"/>.
        /// </summary>
        /// <param name="table">The given DataTable</param>
        /// <param name="keys">A given key collection</param>
        /// <param name="dictionary">A given result dictionary</param>
        /// <param name="minLength">A given dictionary with the minimum length of a column</param>
        private static void WalkThroughDataRow(DataTable table, ICollection<string> keys, IDictionary<string, int> dictionary, IDictionary<string, int> minLength)
        {
            foreach (var (row, key) in from DataRow row in table.Rows
                     from string key in keys
                     select (row, key))
            {
                int length;
                if (dictionary[key] != NOT_SET)
                {
                    length = minLength[key];

                    if (row[key].ToString()!.Length > length)
                    {
                        minLength[key] = row[key].ToString()!.Length;
                    }
                }
                else // the first time to set over NOT_SET (-1)
                {
                    length = dictionary[key];

                    if (row[key].ToString()!.Length > length)
                    {
                        dictionary[key] = row[key].ToString()!.Length;
                    }
                }
            }
        }
    }
}
