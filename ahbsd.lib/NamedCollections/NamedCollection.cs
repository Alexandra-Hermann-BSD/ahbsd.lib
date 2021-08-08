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
using System.Collections.Generic;
using System.Collections.ObjectModel;

namespace ahbsd.lib.NamedCollections
{
    /// <summary>
    /// Default implementation of <see cref="INamedCollection{T}"/>.
    /// </summary>
    /// <typeparam name="T">Type of the collected objects.</typeparam>
    public class NamedCollection<T> : Collection<T>,  INamedCollection<T>
    {
        /// <summary>
        /// The name of the collection.
        /// </summary>
        private string _name;

        /// <summary>
        /// Constructor without any parameters.
        /// </summary>
        public NamedCollection()
            : base() => _name = null;

        /// <summary>
        /// Constructor with a given <see cref="IList{T}"/> to wrap.
        /// </summary>
        /// <param name="list">The list to wrap.</param>
        public NamedCollection(IList<T> list)
            : base(list) => _name = null;

        /// <summary>
        /// Constructor with a given name for the collection.
        /// </summary>
        /// <param name="name">The given name for the collection.</param>
        public NamedCollection(string name)
            : base() => _name = name.Trim();

        /// <summary>
        /// Constructor with a given name for the collection and a
        /// <see cref="IList{T}"/> to wrap.
        /// </summary>
        /// <param name="name">The given name for the collection.</param>
        /// <param name="list">The list to wrap.</param>
        public NamedCollection(string name, IList<T> list)
            : base(list) => _name = name.Trim();

        #region implementation of INamedCollection<T>
        /// <summary>
        /// Gets or sets the name of the collection.
        /// </summary>
        /// <value>The name of the collection.</value>
        public string Name
        {
            get => _name;
            set
            {
                ChangeEventArgs<string> cea;

                if (value != null && !value.Trim().Equals(_name))
                {
                    cea = new ChangeEventArgs<string>(_name, value.Trim());
                    _name = value.Trim();
                    OnNameChanged?.Invoke(this, cea);
                }
                else if (value == null && _name != null)
                {
                    cea = new ChangeEventArgs<string>(_name, value);
                    _name = value;
                    OnNameChanged?.Invoke(this, cea);
                }
            }
        }
        /// <summary>
        /// Happenes, when the <see cref="Name"/> has changed.
        /// </summary>
        public event ChangeEventHandler<string> OnNameChanged;

        /// <summary>
        /// Gets a string representation of this object.
        /// </summary>
        /// <returns>The string representation of this object.</returns>
        public override string ToString() => $"{_name}: Count = {Count}";
        #endregion
    }
}
