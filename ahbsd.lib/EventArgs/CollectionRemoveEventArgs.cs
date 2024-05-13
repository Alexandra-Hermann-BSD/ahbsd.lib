// 
//     ahbsd.lib
//     ahbsd.lib
//     CollectionRemoveEventArgs.cs
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
using ahbsd.lib.Interfaces;

namespace ahbsd.lib.EventArgs
{
    /// <summary>
    /// Event arguments for removed items.
    /// </summary>
    /// <typeparam name="T">The type of the removed items</typeparam>
    public class CollectionRemoveEventArgs<T> : System.EventArgs, ICollectionRemoveArgs<T>
    {
        /// <summary>
        /// Constructor with the removed items.
        /// </summary>
        /// <param name="removedItems">The removed items.</param>
        public CollectionRemoveEventArgs(ICollection<T> removedItems) => RemovedItems = removedItems as IReadOnlyCollection<T>;

        #region implementation of ICollectionRemoveArgs<T>

        /// <inheritdoc />
        public IReadOnlyCollection<T> RemovedItems { get; }

        #endregion
    }
}