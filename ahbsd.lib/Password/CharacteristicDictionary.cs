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
using System.Collections;
using System.Collections.Generic;
using System.ComponentModel;
using System.Text;
using JetBrains.Annotations;

namespace ahbsd.lib.Password
{
    /// <summary>
    /// Characteristic Dictionarry.
    /// </summary>
    public class CharacteristicDictionary : Component, ICharacteristicDictionary
    {
        /// <summary>
        /// The inner dictionary.
        /// </summary>
        private IDictionary<Charasteristic, bool> dictionary;

        /// <summary>
        /// Constructor without parameter.
        /// </summary>
        public CharacteristicDictionary()
        {
            Initialize();
        }

        /// <summary>
        /// Constructor with a given password.
        /// </summary>
        /// <param name="value">The given password.</param>
        internal CharacteristicDictionary(string value)
        {
            Initialize(value);
        }

        /// <summary>
        /// Constructor with a given password.
        /// </summary>
        /// <param name="value">The given password.</param>
        internal CharacteristicDictionary(IPassword value)
        {
            Initialize(value);
        }

        /// <summary>
        /// Constructor with a given owning container.
        /// </summary>
        /// <param name="container">The given owning container.</param>
        public CharacteristicDictionary(IContainer container)
        {
            Initialize();

            container?.Add(this, Name);
        }

        /// <summary>
        /// Constructor with a given password and a given owning container.
        /// </summary>
        /// <param name="value">The given password.</param>
        /// <param name="container">The given owning container.</param>
        internal CharacteristicDictionary(string value, IContainer container)
        {
            Initialize(value);

            container?.Add(this, Name);
        }

        /// <summary>
        /// Constructor with a given password and a given owning container.
        /// </summary>
        /// <param name="value">The given password.</param>
        /// <param name="container">The given owning container.</param>
        internal CharacteristicDictionary(IPassword value, IContainer container)
        {
            Initialize(value);

            container?.Add(this, Name);
        }

        /// <summary>
        /// Initializes the <see cref="dictionary"/>.
        /// </summary>
        private void Initialize()
        {
            dictionary = new Dictionary<Charasteristic, bool>(5)
            {
                { Charasteristic.CapitalLetter, false },
                { Charasteristic.LowercaseLetter, false },
                { Charasteristic.Numeric, false },
                { Charasteristic.Space, false },
                { Charasteristic.SpecialCharacter, false }
            };
        }

        /// <summary>
        /// Initializes the <see cref="dictionary"/> with a given password.
        /// </summary>
        /// <param name="value">The given password.</param>
        private void Initialize(string value)
        {
            dictionary = new Dictionary<Charasteristic, bool>(5)
            {
                { Charasteristic.CapitalLetter, Password.GetUpperCases(value) > 0 },
                { Charasteristic.LowercaseLetter, Password.GetLowerCases(value) > 0 },
                { Charasteristic.Numeric, Password.GetNumbers(value) > 0 },
                { Charasteristic.Space, Password.GetSpaces(value) > 0 },
                { Charasteristic.SpecialCharacter, Password.GetSpecials(value) > 0 }
            };
        }

        /// <summary>
        /// Initializes the <see cref="dictionary"/> with a given password.
        /// </summary>
        /// <param name="password">The given password.</param>
        private void Initialize(IPassword password)
        {
            dictionary = new Dictionary<Charasteristic, bool>(5)
            {
                { Charasteristic.CapitalLetter, password.UpperCases > 0 },
                { Charasteristic.LowercaseLetter, password.LowerCases > 0 },
                { Charasteristic.Numeric, password.Numbers > 0 },
                { Charasteristic.Space, password.Spaces > 0 },
                { Charasteristic.SpecialCharacter, password.Specials > 0 }
            };
        }

        #region implementation of ICharacteristicDictionary

        /// <inheritdoc/>
        public bool this[Charasteristic key]
        {
            get => dictionary[key];
            set => dictionary[key] = value;
        }

        /// <inheritdoc/>
        public ICollection<Charasteristic> Keys => dictionary.Keys;
        
        /// <inheritdoc/>
        public ICollection<bool> Values => dictionary.Values;
        
        /// <inheritdoc/>
        public int Count => 5;
        
        /// <inheritdoc/>
        public bool IsReadOnly => dictionary.IsReadOnly;
        
        /// <inheritdoc/>
        public void Add(Charasteristic key, bool value) 
            => throw new ArgumentException("Adding KeyValuePairs isn't possible here!");

        /// <inheritdoc/>
        public void Add(KeyValuePair<Charasteristic, bool> item) 
            => throw new ArgumentException("Adding KeyValuePairs isn't possible here!");

        /// <inheritdoc/>
        public void Clear() => Initialize();
        
        /// <inheritdoc/>
        public bool Contains(KeyValuePair<Charasteristic, bool> item) => dictionary.Contains(item);
        
        /// <inheritdoc/>
        public bool ContainsKey(Charasteristic key) => dictionary.ContainsKey(key);
        
        /// <inheritdoc/>
        public void CopyTo(KeyValuePair<Charasteristic, bool>[] array, int arrayIndex) 
            => dictionary.CopyTo(array, arrayIndex);
        
        /// <inheritdoc/>
        [MustDisposeResource]
        public IEnumerator<KeyValuePair<Charasteristic, bool>> GetEnumerator() => dictionary.GetEnumerator();
        
        /// <inheritdoc/>
        public bool Remove(Charasteristic key) => false;
        
        /// <inheritdoc/>
        public bool Remove(KeyValuePair<Charasteristic, bool> item) => false;
        
        /// <inheritdoc/>
        public bool TryGetValue(Charasteristic key, out bool value) 
            => dictionary.TryGetValue(key, out value);
        
        /// <inheritdoc/>
        [MustDisposeResource]
        IEnumerator IEnumerable.GetEnumerator() => dictionary.GetEnumerator();
        
        /// <inheritdoc cref="ICharacteristicDictionary.ToString"/>
        public override string ToString()
        {
            StringBuilder result = new StringBuilder("CharacteristicDictionary ");
            int added = 0;

            if (this[Charasteristic.CapitalLetter])
            {
                result.Append($"[{Charasteristic.CapitalLetter}] ");
                added++;
            }

            if (this[Charasteristic.LowercaseLetter])
            {
                result.Append($"[{Charasteristic.LowercaseLetter}] ");
                added++;
            }

            if (this[Charasteristic.Numeric])
            {
                result.Append($"[{Charasteristic.Numeric}] ");
                added++;
            }

            if (this[Charasteristic.Space])
            {
                result.Append($"[{Charasteristic.Space}] ");
                added++;
            }

            if (this[Charasteristic.SpecialCharacter])
            {
                result.Append($"[{Charasteristic.SpecialCharacter}] ");
                added++;
            }

            return added > 0 
                ? result.ToString().Trim() : 
                $"CharacteristicDictionary_[{GetHashCode()}]";
        }

        /// <inheritdoc/>
        public string Name => ToString();

        #endregion
    }
}
