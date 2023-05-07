// //
// //    ahbsd.lib
// //    ahbsd.lib
// //    static.ApiAttribute.cs
// //
// //    Copyright 2022 Alexandra Hermann – Beratung, Software, Design
// //
// //    Licensed under the Apache License, Version 2.0 (the "License");
// //    you may not use this file except in compliance with the License.
// //    You may obtain a copy of the License at
// //
// //        http://www.apache.org/licenses/LICENSE-2.0
// //
// //    Unless required by applicable law or agreed to in writing, software
// //    distributed under the License is distributed on an "AS IS" BASIS,
// //    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// //    See the License for the specific language governing permissions and
// //    limitations under the License.
// 

using System;
using System.Collections.Generic;

namespace ahbsd.lib.Attributes
{
    /// <summary>
    /// Attribute that tells, that this belongs to the API.
    /// </summary>
    partial class ApiAttribute : Attribute
    {
        /// <summary>
        /// A collection of types, that are using this <see cref="Attribute"/>.
        /// </summary>
        private static readonly ICollection<Type> usingTypes = new List<Type>();


        /// <summary>
        /// Gets all <see cref="Type"/>s, that use this Attribute.
        /// </summary>
        /// <value>All <see cref="Type"/>s, that use this Attribute</value>
        public static IReadOnlyCollection<Type> UsingTypes => (IReadOnlyCollection<Type>) usingTypes;
    }
}