// 
//     ahbsd.lib
//     ahbsd.lib
//     ValueAttributeUtil.cs
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
using ahbsd.lib.Interfaces;

namespace ahbsd.lib.Attributes
{
    /// <summary>
    /// A utility for a <see cref="ValueAttribute"/>
    /// </summary>
    public sealed class ValueAttributeUtil : AttributeUtil<ValueAttribute>
    {
        /// <summary>
        /// Private constructor
        /// </summary>
        /// <param name="attribute">Found attribute</param>
        private ValueAttributeUtil(ValueAttribute attribute) : base(attribute)
        { }

        /// <summary>
        /// Tries to get a <see cref="ValueAttribute"/> and <see cref="ValueAttributeUtil"/> from a given object.
        /// </summary>
        /// <param name="obj">The given object</param>
        /// <param name="util">[out] The <see cref="ValueAttributeUtil"/> for the given object</param>
        /// <returns>The <see cref="ValueAttribute"/> from the given object, if found;</returns>
        public static ValueAttribute GetValueAttribute(object obj, out ValueAttributeUtil util)
        {
            util = null;
            var result = GetAttribute(obj, out AttributeUtil<ValueAttribute> util2);

            util = ConvertFrom(util2);

            return result;
        }

        /// <summary>
        /// Converts a given <see cref="IAttributeUtil{T}"/> of the <see cref="Type"/> <see cref="ValueAttribute"/> to a
        /// <see cref="ValueAttributeUtil"/>.
        /// </summary>
        /// <param name="source">The given IAttributeUtil{ValueAttribute}</param>
        /// <returns>The converted value attribute util</returns>
        protected static ValueAttributeUtil ConvertFrom(IAttributeUtil<ValueAttribute> source) 
            => new ValueAttributeUtil(source.Attribute)
            {
                Container = source.Container,
                Name = source.Name,
                Site = source.Site
            };
    }
}