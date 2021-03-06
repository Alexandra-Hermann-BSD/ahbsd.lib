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
    /// Default implementation of <see cref="IDictionaryOfNamedCollections{K, V}"/>.
    /// </summary>
    /// <typeparam name="K">Key Type.</typeparam>
    /// <typeparam name="V">Value Type of the <see cref="INamedCollection{T}"/>.</typeparam>
    public class DictionaryOfNamedCollection<K, V> : Dictionary<K, INamedCollection<V>>, IDictionaryOfNamedCollections<K, V>
    {

        #region implementation of IDictionaryOfNamedCollections<K, V>
        /// <summary>
        /// Happenes if a new <see cref="INamedCollection{T}"/> was added.
        /// </summary>
        public event EventHandler<EventArgs<INamedCollection<V>>> OnNamedCollectionAdded;
        /// <summary>
        /// Adds a new key with the name of the new <see cref="INamedCollection{T}"/>.
        /// </summary>
        /// <param name="key">The new key.</param>
        /// <param name="name">The name of the new <see cref="INamedCollection{T}"/>.</param>
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
                    EventArgs<INamedCollection<V>> eventArgs;
                    INamedCollection<V> tmp = new NamedCollection<V>(name);
                    eventArgs = new EventArgs<INamedCollection<V>>(tmp);
                    Add(key, tmp);
                    OnNamedCollectionAdded?.Invoke(this, eventArgs);
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
        /// Adds a value to the <see cref="INamedCollection{T}"/> of key.
        /// </summary>
        /// <param name="key">The Key.</param>
        /// <param name="value">The Value.</param>
        /// <param name="name">
        /// The name of the new <see cref="INamedCollection{T}"/>.
        /// </param>
        /// <remarks>
        /// If the key already exists the name isn't needed; if the key doesn't
        /// exists a name is needed, otherwise a
        /// <see cref="KeyNotFoundException"/> will be thrown.
        /// </remarks>
        /// <exception cref="KeyNotFoundException">
        /// If the key isn't there AND a name for the new
        /// <see cref="INamedCollection{T}"/> was missing.
        /// </exception>
        public void Add(K key, V value, string name = null)
        {
            if (!ContainsKey(key))
            {
                if (string.IsNullOrEmpty(name))
                {
                    KeyNotFoundException k =
                    new KeyNotFoundException($"Key '{key}' is missing AND name" +
                    $"for creating a new INamedCollection<{typeof(V)}> is null or empty as well");
                    throw k;
                }
                else
                {
                    EventArgs<INamedCollection<V>> eventArgs;
                    INamedCollection<V> tmp = new NamedCollection<V>(name);
                    eventArgs = new EventArgs<INamedCollection<V>>(tmp);
                    Add(key, tmp);
                    OnNamedCollectionAdded?.Invoke(this, eventArgs);
                }
            }

            this[key].Add(value);
        }
        /// <summary>
        /// Adds a <see cref="KeyValuePair{TKey, TValue}"/>.
        /// </summary>
        /// <param name="keyValuePair">The <see cref="KeyValuePair{TKey, TValue}"/>.</param>
        /// <param name="name">
        /// The name of the new <see cref="INamedCollection{T}"/>.
        /// </param>
        /// <remarks>
        /// If the key already exists the name isn't needed; if the key doesn't
        /// exists a name is needed, otherwise a
        /// <see cref="KeyNotFoundException"/> will be thrown.
        /// </remarks>
        /// <exception cref="KeyNotFoundException">
        /// If the key isn't there AND a name for the new
        /// <see cref="INamedCollection{T}"/> was missing.
        /// </exception>
        public void Add(KeyValuePair<K, V> keyValuePair, string name = null)
        {
            Add(keyValuePair.Key, keyValuePair.Value, name);
        }
        #endregion
    }
}
