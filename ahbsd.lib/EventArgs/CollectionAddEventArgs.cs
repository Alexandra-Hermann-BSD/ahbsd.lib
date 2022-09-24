// 
//     ahbsd.lib
//     ahbsd.lib
//     CollectionAddEventArgs.cs
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
using ahbsd.lib.Interfaces;

namespace ahbsd.lib.EventArgs;

/// <summary>
/// Class for generic event Args handling additions to <see cref="ICollection{T}"/>s.
/// </summary>
/// <typeparam name="T">The <see cref="Type"/> to use</typeparam>
public class CollectionAddEventArgs<T> : EventArgs<T>, ICollectionAddEventArgs<T>
{
    /// <summary>
    /// The affected collection
    /// </summary>
    private readonly ICollection<T> affectedCollection;
        
    /// <summary>
    /// Constructor with a given affected collection and the added item.
    /// </summary>
    /// <param name="affectedCollection">The affected collection</param>
    /// <param name="addedItem">The added item</param>
    public CollectionAddEventArgs([NotNull]ICollection<T> affectedCollection, [NotNull]T addedItem) 
        : base(addedItem)
    {
        this.affectedCollection = affectedCollection;
    }

    #region implementation of ICollectionAddEventArgs
    /// <inheritdoc/>
    public IReadOnlyCollection<T> AffectedCollection
    {
        get
        {
            IReadOnlyCollection<T> result;

            if (typeof(T) == typeof(string) && affectedCollection is ISourceDirectories sourceDirectories)
            {
                result = sourceDirectories.AsReadonly as IReadOnlyCollection<T>;
            }
            else
            {
                if (affectedCollection is IAsReadonlyCollection<T> eventCollection)
                {
                    result = eventCollection.AsReadonly;
                }
                else
                {
                    result = (IReadOnlyCollection<T>) affectedCollection;
                }
                    
            }

            return result ??= new List<T>();
        }
    }

    #endregion
}