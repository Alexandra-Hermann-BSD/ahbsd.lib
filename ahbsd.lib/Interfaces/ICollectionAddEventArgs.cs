// 
//     ahbsd.lib
//     ahbsd.lib
//     ICollectionAddEventArgs.cs
// 
//     Copyright 2022 Alexandra Hermann – Beratung, Software, Design
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
using System.Collections.Generic;
using System.Diagnostics.CodeAnalysis;

namespace ahbsd.lib.Interfaces
{
    /// <summary>
    /// Interface for generic event Args handling additions to <see cref="ICollection{T}"/>s.
    /// </summary>
    /// <typeparam name="T">The <see cref="Type"/> to use</typeparam>
    public interface ICollectionAddEventArgs<out T> : IEventArgs<T>
    {
        /// <summary>
        /// Gets the affected collection as read only.
        /// </summary>
        /// <value>The affected collection as read only</value>
        [NotNull]
        IReadOnlyCollection<T> AffectedCollection { get; }
    }
}