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

using System.Collections.Generic;
using ahbsd.lib.EventHandler;

namespace ahbsd.lib.NamedCollections
{
    /// <summary>
    /// Interface for a named list.
    /// </summary>
    /// <typeparam name="T">The type of the listed objects.</typeparam>
    public interface INamedList<T> : IList<T>
    {
        /// <summary>
        /// Gets or sets the name of the list.
        /// </summary>
        /// <value>The name of the list.</value>
        string Name { get; set; }
        /// <summary>
        /// Happenes, if the name of the list has changed.
        /// </summary>
        event ChangeEventHandler<string> OnNameChanged;
        /// <summary>
        /// Gets a string representation of this object.
        /// </summary>
        /// <returns>The string representation of this object.</returns>
        string ToString();
    }
}
