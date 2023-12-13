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

namespace ahbsd.lib.NamedCollections
{
    /// <summary>
    /// Default implementation of <see cref="IDictionaryOfNamedCollections{K, V}"/>.
    /// </summary>
    /// <typeparam name="K">Key Type.</typeparam>
    /// <typeparam name="TV">Value Type of the <see cref="INamedCollection{T}"/>.</typeparam>
    [Serializable]
    // ReSharper disable once InconsistentNaming
    // ReSharper disable once InconsistentNaming
    public class DictionaryOfNamedCollection<K, TV> : Dictionary<K, INamedCollection<TV>>, IDictionaryOfNamedCollections<K, TV>
    {
        /// <summary>
        /// Constructor with serialized data
        /// </summary>
        /// <param name="info">The serialization info</param>
        /// <param name="context">The streaming context</param>
        protected DictionaryOfNamedCollection(SerializationInfo info, StreamingContext context) : base(info, context) { }

        /// <summary>
        /// Simple constructor
        /// </summary>
        public DictionaryOfNamedCollection() { }
        
        #region implementation of IDictionaryOfNamedCollections<K, V>
        /// <inheritdoc />
        public event EventHandler<EventArgs<INamedCollection<TV>>> OnNamedCollectionAdded;
        
        /// <inheritdoc />
        public void Add(K key, string name)
        {
            Type t = typeof(TV);
            if (t == typeof(string))
            {
                TV tmpV = (TV)Convert.ChangeType(name, t);
                Add(key, tmpV);
            }
            else
            {
                if (!ContainsKey(key))
                {
                    Add(key, new NamedCollection<TV>(name));
                    EventArgs<INamedCollection<TV>> eventArgs = new EventArgs<INamedCollection<TV>>(new NamedCollection<TV>(name));
                    OnNamedCollectionAdded?.Invoke(this, eventArgs);
                }
                else
                {
                    ArgumentException ae = new ArgumentException($"Key '{key}' already exists.", nameof(key));
                    throw ae;
                }
            }
        }
        
        /// <inheritdoc />
        public void Add(K key, TV value, string name = null)
        {
            if (!ContainsKey(key))
            {
                if (name.IsNullOrEmpty())
                {
                    KeyNotFoundException k = new KeyNotFoundException($"Key '{key}' is missing AND name for creating a new INamedCollection<{typeof(TV)}> is null or empty as well");
                    throw k;
                }

                INamedCollection<TV> tmp = new NamedCollection<TV>(name);
                var eventArgs = new EventArgs<INamedCollection<TV>>(tmp);
                Add(key, tmp);
                OnNamedCollectionAdded?.Invoke(this, eventArgs);
            }

            this[key].Add(value);
        }
        
        /// <inheritdoc />
        public void Add(KeyValuePair<K, TV> keyValuePair, string name = null)
            => Add(keyValuePair.Key, keyValuePair.Value, name);
        #endregion

        /// <inheritdoc />
        public override string ToString() => $"DictionaryOfNamedCollection<{typeof(K)}, {typeof(TV)}>; Count: {Count}";
    }
}
