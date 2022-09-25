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

namespace ahbsd.lib.NamedCollections
{
    /// <summary>
    /// Default implementation of <see cref="INamedList{T}"/>.
    /// </summary>
    /// <typeparam name="T">Type of the listed objects.</typeparam>
    public class NamedList<T> : List<T>, INamedList<T>
    {
        /// <summary>
        /// The name of the list.
        /// </summary>
        private string name;

        /// <summary>
        /// Constructor without any parameters.
        /// </summary>
        public NamedList() => name = null;

        /// <summary>
        /// Constructor with a base capacity of the list.
        /// </summary>
        /// <param name="capacity">The base capacity of the list.</param>
        /// <exception cref="ArgumentOutOfRangeException">
        /// If the capacity is out of range.
        /// </exception>
        public NamedList(int capacity) : base(capacity) => name = null;

        /// <summary>
        /// Constructor with a given collection.
        /// </summary>
        /// <param name="collection">The given collection.</param>
        public NamedList(IEnumerable<T> collection) : base(collection) => name = null;

        /// <summary>
        /// Constructor with a given name.
        /// </summary>
        /// <param name="name">The given name.</param>
        public NamedList(string name) => this.name = name?.Trim();

        /// <summary>
        /// Constructor with a given name and a base capacity of the list.
        /// </summary>
        /// <param name="name">The given name.</param>
        /// <param name="capacity">The base capacity of the list.</param>
        /// <exception cref="ArgumentOutOfRangeException">
        /// If the capacity is out of range.
        /// </exception>
        public NamedList(string name, int capacity) : base(capacity) => this.name = name?.Trim();

        /// <summary>
        /// Constructor with a given name and  a given collection.
        /// </summary>
        /// <param name="name">The given name.</param>
        /// <param name="collection">The given collection.</param>
        public NamedList(string name, IEnumerable<T> collection) : base(collection) => this.name = name?.Trim();


        #region implementation of INamedList<T>
        /// <inheritdoc/>
        public string Name
        {
            get => name;
            set
            {
                ChangeEventArgs<string> cea;

                if (value != null && !value.Trim().Equals(name))
                {
                    cea = new ChangeEventArgs<string>(name, value.Trim());
                    name = value;
                    OnNameChanged?.Invoke(this, cea);
                }
                else if (value == null && name != null)
                {
                    cea = new ChangeEventArgs<string>(name, null);
                    name = null;
                    OnNameChanged?.Invoke(this, cea);
                }
            }
        }
        
        /// <inheritdoc/>
        public event ChangeEventHandler<string> OnNameChanged;

        /// <summary>
        /// Gets a string representation of this object.
        /// </summary>
        /// <returns>The string representation of this object.</returns>
        public override string ToString() => $"{name}: Count = {Count}";
        #endregion
    }
}
