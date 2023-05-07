// 
//     ahbsd.lib
//     ahbsd.lib
//     ICollectionRemoveArgs.cs
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

namespace ahbsd.lib.Interfaces
{
    /// <summary>
    /// Generic interface for removed item's.
    /// </summary>
    /// <typeparam name="T">The type of the event's</typeparam>
    public interface ICollectionRemoveArgs<out T>
    {
        /// <summary>
        /// Gets the removed items as readonly.
        /// </summary>
        /// <value>The removed items as readonly</value>
        IReadOnlyCollection<T> RemovedItems { get; }
    }
}
