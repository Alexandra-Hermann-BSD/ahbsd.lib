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
using System.Collections.Generic;
using ahbsd.lib.EventArgs;
using ahbsd.lib.EventHandler;
using JetBrains.Annotations;

namespace ahbsd.lib.NamedCollections;

/// <summary>
/// Default implementation of <see cref="INamedList{T}"/>.
/// </summary>
/// <typeparam name="T">Type of the listed objects.</typeparam>
[PublicAPI]
public class NamedList<T> : List<T>, INamedList<T?>
{
    /// <summary>
    /// The name of the list.
    /// </summary>
    private string? _name;

    /// <summary>
    /// Constructor without any parameters.
    /// </summary>
    public NamedList() => _name = null;

    /// <summary>
    /// Constructor with a base capacity of the list.
    /// </summary>
    /// <param name="capacity">The base capacity of the list.</param>
    /// <exception cref="ArgumentOutOfRangeException"><paramref name="capacity"/> is less then 0</exception>
    public NamedList(int capacity) : base(capacity) => _name = null;

    /// <summary>
    /// Constructor with a given collection.
    /// </summary>
    /// <param name="collection">The given collection.</param>
    /// <exception cref="ArgumentException"><paramref name="collection"/> is <c>null</c></exception>
    public NamedList(IEnumerable<T> collection) : base(collection) => _name = null;

    /// <summary>
    /// Constructor with a given name.
    /// </summary>
    /// <param name="name">The given name.</param>
    public NamedList(string? name) => _name = name?.Trim();

    /// <summary>
    /// Constructor with a given name and a base capacity of the list.
    /// </summary>
    /// <param name="name">The given name.</param>
    /// <param name="capacity">The base capacity of the list.</param>
    /// <exception cref="ArgumentOutOfRangeException"><paramref name="capacity"/> is less then 0</exception>
    public NamedList(string? name, int capacity) : base(capacity) => _name = name?.Trim();

    /// <summary>
    /// Constructor with a given name and  a given collection.
    /// </summary>
    /// <param name="name">The given name.</param>
    /// <param name="collection">The given collection.</param>
    /// <exception cref="ArgumentException"><paramref name="collection"/> is <c>null</c></exception>
    public NamedList(string? name, IEnumerable<T> collection) : base(collection) => _name = name?.Trim();

    #region implementation of INamedList<T>
    /// <inheritdoc/>
    public string? Name
    {
        get => _name;
        set
        {
            ChangeEventArgs<string?> cea;

            if (value != null && !value.Trim().Equals(_name))
            {
                cea = new ChangeEventArgs<string?>(_name, value.Trim());
                _name = value;
                OnNameChanged?.Invoke(this, cea);
            }
            else if (value == null && _name != null)
            {
                cea = new ChangeEventArgs<string?>(_name, null);
                _name = null;
                OnNameChanged?.Invoke(this, cea);
            }
        }
    }
        
    /// <inheritdoc/>
    public event ChangeEventHandler<string?>? OnNameChanged;

    /// <inheritdoc cref="object.ToString()"/>
    public override string ToString() => $"{_name}List<{typeof(T)}>: Count = {Count}";
    #endregion
}