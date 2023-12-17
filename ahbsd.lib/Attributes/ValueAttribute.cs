// 
//     ahbsd.lib
//     ahbsd.lib
//     ValueAttribute.cs
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

using System;

namespace ahbsd.lib.Attributes
{
    /// <summary>
    /// An attribute to set a value.
    /// </summary>
    public class ValueAttribute : Attribute
    {
        /// <summary>
        /// Constructor with the value to set.
        /// </summary>
        /// <param name="value">The value to set</param>
        public ValueAttribute(int value)
        {
            Value = value;
        }
        
        /// <summary>
        /// Gets or sets the value.
        /// </summary>
        /// <value>The value</value>
        public int Value { get; set; }
    }
}