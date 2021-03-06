﻿//
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

namespace ahbsd.lib.NamedCollections
{
    /// <summary>
    /// Default implementation of <see cref="IDictionaryOfNamedList{K, V}"/>.
    /// </summary>
    /// <typeparam name="K">The type of the key.</typeparam>
    /// <typeparam name="V">The type of the <see cref="INamedList{T}"/>-ValueType.</typeparam>
    public class DictionaryOfNamedList<K, V> : Dictionary<K, INamedList<V>>, IDictionaryOfNamedList<K, V>
    {
        #region implementation of IDictionaryOfNamedList<K, V>
        /// <summary>
        /// Happenes, if a new <see cref="INamedList{T}"/> was added.
        /// </summary>
        public event EventHandler<EventArgs<INamedList<V>>> OnNamedListAdded;
        /// <summary>
        /// Adds a key.
        /// </summary>
        /// <param name="key">The key.</param>
        /// <param name="name">The name of the new <see cref="INamedList{T}"/>.</param>
        /// <exception cref="ArgumentException">If key already exists.</exception>
        public void Add(K key, string name)
        {
            V tmpV;
            Type t = (typeof(V));
            if (t.Equals(typeof(string)))
            {
                tmpV = (V)Convert.ChangeType(name, t);
                Add(key, tmpV, null);
            }
            else
            {
                if (!ContainsKey(key))
                {
                    EventArgs<INamedList<V>> eventArgs;
                    INamedList<V> tmp = new NamedList<V>(name);
                    eventArgs = new EventArgs<INamedList<V>>(tmp);
                    Add(key, tmp);
                    OnNamedListAdded?.Invoke(this, eventArgs);
                }
                else
                {
                    ArgumentException ae = new ArgumentException(
                        $"Key '{key}' already exists.", "key");
                    throw ae;
                }
            }
        }
        /// <summary>
        /// Adds a value to the <see cref="INamedList{T}"/> of key.
        /// </summary>
        /// <param name="key">The key.</param>
        /// <param name="value">The value.</param>
        /// <param name="name">
        /// The name of the new <see cref="INamedList{T}"/>.
        /// </param>
        /// <remarks>
        /// If the key already exists the name isn't needed; if the key doesn't
        /// exists a name is needed, otherwise a
        /// <see cref="KeyNotFoundException"/> will be thrown.
        /// </remarks>
        /// <exception cref="KeyNotFoundException">
        /// If the key isn't there AND a name for the new
        /// <see cref="INamedList{T}"/> was missing.
        /// </exception>
        public void Add(K key, V value, string name = null)
        {
            if (!ContainsKey(key))
            {
                if (string.IsNullOrEmpty(name))
                {
                    KeyNotFoundException k =
                    new KeyNotFoundException($"Key '{key}' is missing AND name" +
                    $"for creating a new INamedList<{typeof(V)}> is null or empty as well");
                    throw k;
                }
                else
                {
                    EventArgs<INamedList<V>> eventArgs;
                    INamedList<V> tmp = new NamedList<V>(name);
                    eventArgs = new EventArgs<INamedList<V>>(tmp);
                    Add(key, tmp);
                    OnNamedListAdded?.Invoke(this, eventArgs);
                }
            }

            this[key].Add(value);
        }
        /// <summary>
        /// Adds a <see cref="KeyValuePair{TKey, TValue}"/>.
        /// </summary>
        /// <param name="keyValuePair">The <see cref="KeyValuePair{TKey, TValue}"/>.</param>
        /// <param name="name">
        /// The name of the new <see cref="INamedList{T}"/>.
        /// </param>
        /// <remarks>
        /// If the key already exists the name isn't needed; if the key doesn't
        /// exists a name is needed, otherwise a
        /// <see cref="KeyNotFoundException"/> will be thrown.
        /// </remarks>
        /// <exception cref="KeyNotFoundException">
        /// If the key isn't there AND a name for the new
        /// <see cref="INamedList{T}"/> was missing.
        /// </exception>
        public void Add(KeyValuePair<K, V> keyValuePair, string name = null)
        {
            Add(keyValuePair.Key, keyValuePair.Value, name);
        }
        #endregion
    }
}
