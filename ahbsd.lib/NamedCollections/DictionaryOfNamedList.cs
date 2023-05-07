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
using System.Runtime.Serialization;
using ahbsd.lib.Extensions;

// ReSharper disable All

namespace ahbsd.lib.NamedCollections
{
    /// <summary>
    /// Default implementation of <see cref="IDictionaryOfNamedList{K, V}"/>.
    /// </summary>
    /// <typeparam name="K">The type of the key.</typeparam>
    /// <typeparam name="V">The type of the <see cref="INamedList{T}"/>-ValueType.</typeparam>
    [Serializable]
    public class DictionaryOfNamedList<K, V> : Dictionary<K, INamedList<V>>, IDictionaryOfNamedList<K, V>
    {
        /// <summary>
        /// Constructor with serialized data
        /// </summary>
        /// <param name="info">The serialization info</param>
        /// <param name="context">The streaming context</param>
        protected DictionaryOfNamedList(SerializationInfo info, StreamingContext context) : base(info, context) { }

        /// <summary>
        /// Simple constructor
        /// </summary>
        public DictionaryOfNamedList() : base() { }
        
        #region implementation of IDictionaryOfNamedList<K, V>
        /// <inheritdoc />
        public event EventHandler<EventArgs<INamedList<V>>> OnNamedListAdded;
        /// <inheritdoc />
        public void Add(K key, string name)
        {
            if (typeof(V).Equals(typeof(string)))
            {
                V tmpV = (V)Convert.ChangeType(name, typeof(V));
                Add(key, tmpV, null);
            }
            else
            {
                if (!ContainsKey(key))
                {
                    Add(key, new NamedList<V>(name));
                    EventArgs<INamedList<V>> eventArgs = new EventArgs<INamedList<V>>(new NamedList<V>(name));
                    OnNamedListAdded?.Invoke(this, eventArgs);
                }
                else
                {
                    ArgumentException ae = new ArgumentException($"Key '{key}' already exists.", "key");
                    throw ae;
                }
            }
        }
        
        /// <inheritdoc />
        public void Add(K key, V value, string name = null)
        {
            if (!ContainsKey(key))
            {
                if (name.IsNullOrEmpty())
                {
                    KeyNotFoundException k = new KeyNotFoundException($"Key '{key}' is missing AND name for creating a new INamedList<{typeof(V)}> is null or empty as well");
                    throw k;
                }
                else
                {
                    var namedList = new NamedList<V>(name);
                    Add(key, namedList);
                    EventArgs<INamedList<V>> eventArgs = new EventArgs<INamedList<V>>(namedList);
                    OnNamedListAdded?.Invoke(this, eventArgs);
                }
            }

            this[key].Add(value);
        }
        
        /// <inheritdoc />
        public void Add(KeyValuePair<K, V> keyValuePair, string name = null) => Add(keyValuePair.Key, keyValuePair.Value, name);
        #endregion

        /// <inheritdoc />
        public override string ToString() => $"DictionaryOfNamedList<{typeof(K)}, {typeof(V)}>; Count={Count}";
    }
}
