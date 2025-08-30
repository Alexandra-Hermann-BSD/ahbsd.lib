// 
//     ahbsd.lib
//     ahbsd.lib
//     SourceDirectories.cs
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

using System.Collections;
using System.Collections.Generic;
using ahbsd.lib.EventArgs;
using ahbsd.lib.EventHandler;
using ahbsd.lib.Extensions;
using ahbsd.lib.Interfaces;
using JetBrains.Annotations;

namespace ahbsd.lib.Collections;

/// <summary>
/// Class for source directories.
/// </summary>
public class SourceDirectories : ISourceDirectories
{
    private readonly ICollection<string> _innerCollection;

    /// <summary>
    /// Simple constructor.
    /// </summary>
    public SourceDirectories() => _innerCollection = new List<string>();

    /// <summary>
    /// Constructor with a base capacity.
    /// </summary>
    /// <param name="capacity">Base capacity</param>
    public SourceDirectories(int capacity) => _innerCollection = new List<string>(capacity);

    #region implementation of ISourceDirectories
    
#pragma warning disable S3264
    // Quite unsure, why Sonar doesn't see the use of this event...
    /// <inheritdoc/>
    public event CollectionAddEventHandler<string> OnNewDirectoryAdded;
#pragma warning restore S3264
    
    /// <inheritdoc/>
    [MustDisposeResource]
    public IEnumerator<string> GetEnumerator() => _innerCollection.GetEnumerator();

    /// <inheritdoc/>
    [MustDisposeResource]
    IEnumerator IEnumerable.GetEnumerator() => (_innerCollection as IEnumerable).GetEnumerator();

    /// <inheritdoc/>
    public void Add(string item)
    {
        if (!item.IsNullOrWhiteSpace())
        {
            var addEventArgs = new CollectionAddEventArgs<string>(this, item);
            _innerCollection.Add(item);
            OnNewDirectoryAdded?.Invoke(this, addEventArgs);
        }
    }

    /// <inheritdoc/>
    public void Clear() => _innerCollection.Clear();

    /// <inheritdoc/>
    public bool Contains(string item) => _innerCollection.Contains(item);

    /// <inheritdoc/>
    public void CopyTo(string[] array, int arrayIndex) => _innerCollection.CopyTo(array, arrayIndex);

    /// <inheritdoc/>
    public bool Remove(string item) => _innerCollection.Remove(item);

    /// <inheritdoc/>
    public int Count => _innerCollection.Count;

    /// <inheritdoc/>
    public bool IsReadOnly => _innerCollection.IsReadOnly;

    /// <inheritdoc/>
    public IReadOnlyCollection<string> AsReadonly => (IReadOnlyCollection<string>) _innerCollection;

    #endregion

}