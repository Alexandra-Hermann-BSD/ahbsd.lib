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
using System.ComponentModel;
using ahbsd.lib.EventHandler;
using ahbsd.lib.Password.Check;

namespace ahbsd.lib.Password
{
    /// <summary>
    /// An interface for a password object in general.
    /// </summary>
    public interface IPassword : IComponent, IEquatable<IPassword>
    {
        /// <summary>
        /// Gets or sets the value.
        /// </summary>
        /// <value>The value.</value>
        string Value { get; set; }
        
        /// <summary>
        /// Gets the length of the password.
        /// </summary>
        /// <value>The length of the password.</value>
        int Length { get; }
        
        /// <summary>
        /// Gets the amount of lower cases.
        /// </summary>
        /// <value>The amount of lower cases.</value>
        int LowerCases { get; }
        
        /// <summary>
        /// Gets the amount of upper cases.
        /// </summary>
        /// <value>The amount of upper cases.</value>
        int UpperCases { get; }
        
        /// <summary>
        /// Gets the amount of numbers.
        /// </summary>
        /// <value>The amount of numbers.</value>
        int Numbers { get; }
        
        /// <summary>
        /// Gets the amount of spaces.
        /// </summary>
        /// <value>The amount of spaces.</value>
        int Spaces { get; }
        
        /// <summary>
        /// Gets the amount of special cases.
        /// </summary>
        /// <value>The amount of special cases.</value>
        int Specials { get; }
        
        /// <summary>
        /// Gets the characteristics of a password.
        /// </summary>
        ICharacteristicDictionary Characteristics { get; }
        
        /// <summary>
        /// Happens, when the <see cref="Value"/> changes.
        /// </summary>
        event ChangeEventHandler<IPassword> OnChange;
        
        /// <summary>
        /// Gets the SecurityValue.
        /// </summary>
        /// <value>The SecurityValue.</value>
        ISecurityValue SecurityValue { get; }
    }
}
