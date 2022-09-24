// 
//     ahbsd.lib
//     ahbsd.lib
//     IEventCollection.cs
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

using System.Collections.Generic;
using ahbsd.lib.EventHandler;

namespace ahbsd.lib.Interfaces;

/// <summary>
/// Interface for a collection that has an event for adding or removing an item.
/// </summary>
/// <typeparam name="T">The type to use</typeparam>
public interface IEventCollection<T> : ICollection<T>, IAsReadonlyCollection<T>
{
    /// <summary>
    /// Happens when an item was added.
    /// </summary>
    event CollectionAddEventHandler<T> OnAdded;

    /// <summary>
    /// Happens when an item was removed.
    /// </summary>
    event CollectionRemoveArgsEventHandler<T> OnRemoved;

    /// <summary>
    /// Happens when the dictionary is cleared.
    /// </summary>
    event CollectionRemoveArgsEventHandler<T> OnCleared;
}
