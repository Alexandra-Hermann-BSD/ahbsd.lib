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
using System.Collections;
using System.Collections.Generic;
using System.ComponentModel;
using System.Diagnostics.CodeAnalysis;
using System;
using System.Text;

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
        private IDictionary<Charasteristic, bool> _dictionary;
        /// <summary>
        /// The name of this component.
        /// </summary>
        private readonly string _name;

        /// <summary>
        /// Constructor without parameter.
        /// </summary>
        public CharacteristicDictionary()
            : base()
        {
            Initialize();
            _name = $"CharacteristicDictionary_[{GetHashCode()}]";
        }

        /// <summary>
        /// Constructor with a given password.
        /// </summary>
        /// <param name="value">The given password.</param>
        internal CharacteristicDictionary(string value)
            : base()
        {
            Initialize(value);
            _name = ToString();
        }

        /// <summary>
        /// Constructor with a given password.
        /// </summary>
        /// <param name="value">The given password.</param>
        internal CharacteristicDictionary(IPassword value)
            : base()
        {
            Initialize(value);
            _name = ToString();
        }

        /// <summary>
        /// Constructor with a given owning container.
        /// </summary>
        /// <param name="container">The given owning container.</param>
        public CharacteristicDictionary(IContainer container)
            : base()
        {
            Initialize();
            _name = $"CharacteristicDictionary_[{GetHashCode()}]";

            container?.Add(this, $"Characteristic [{GetHashCode()}]");
        }

        /// <summary>
        /// Constructor with a given password and a given owning container.
        /// </summary>
        /// <param name="value">The given password.</param>
        /// <param name="container">The given owning container.</param>
        internal CharacteristicDictionary(string value, IContainer container)
            : base()
        {
            Initialize(value);
            _name = ToString();

            container?.Add(this, $"Characteristic [{GetHashCode()}]");
        }

        /// <summary>
        /// Constructor with a given password and a given owning container.
        /// </summary>
        /// <param name="value">The given password.</param>
        /// <param name="container">The given owning container.</param>
        internal CharacteristicDictionary(IPassword value, IContainer container)
            : base()
        {
            Initialize(value);
            _name = ToString();

            container?.Add(this, $"Characteristic [{GetHashCode()}]");
        }

        /// <summary>
        /// Initializes the <see cref="_dictionary"/>.
        /// </summary>
        private void Initialize()
        {
            _dictionary = new Dictionary<Charasteristic, bool>(5)
            {
                { Charasteristic.CapitalLetter, false },
                { Charasteristic.LowercaseLetter, false },
                { Charasteristic.Numeric, false },
                { Charasteristic.Space, false },
                { Charasteristic.SpecialCharacter, false }
            };
        }

        /// <summary>
        /// Initializes the <see cref="_dictionary"/> with a given password.
        /// </summary>
        /// <param name="value">The given password.</param>
        private void Initialize(string value)
        {
            _dictionary = new Dictionary<Charasteristic, bool>(5)
            {
                { Charasteristic.CapitalLetter, Password.GetUpperCases(value) > 0 },
                { Charasteristic.LowercaseLetter, Password.GetLowerCases(value) > 0 },
                { Charasteristic.Numeric, Password.GetNumbers(value) > 0 },
                { Charasteristic.Space, Password.GetSpaces(value) > 0 },
                { Charasteristic.SpecialCharacter, Password.GetSpecials(value) > 0 }
            };
        }

        /// <summary>
        /// Initializes the <see cref="_dictionary"/> with a given password.
        /// </summary>
        /// <param name="password">The given password.</param>
        private void Initialize(IPassword password)
        {
            _dictionary = new Dictionary<Charasteristic, bool>(5)
            {
                { Charasteristic.CapitalLetter, password.UpperCases > 0 },
                { Charasteristic.LowercaseLetter, password.LowerCases > 0 },
                { Charasteristic.Numeric, password.Numbers > 0 },
                { Charasteristic.Space, password.Spaces > 0 },
                { Charasteristic.SpecialCharacter, password.Specials > 0 }
            };
        }

        #region implementation of ICharacteristicDictionary

        /// <summary>
        /// Gets or sets the value of the given key.
        /// </summary>
        /// <param name="key">The given key.</param>
        /// <returns>The value of the given key.</returns>
        public bool this[Charasteristic key]
        {
            get => _dictionary[key];
            set => _dictionary[key] = value;
        }

        /// <summary>
        /// Gets the Keys.
        /// </summary>
        /// <value>The Keys.</value>
        /// <remarks>Each available <see cref="Charasteristic"/>.</remarks>
        public ICollection<Charasteristic> Keys => _dictionary.Keys;
        /// <summary>
        /// Gets all values.
        /// </summary>
        /// <value>The values.</value>
        public ICollection<bool> Values => _dictionary.Values;
        /// <summary>
        /// Gets the amount of <see cref="KeyValuePair{TKey, TValue}"/>s (5).
        /// </summary>
        /// <value>The amount of <see cref="KeyValuePair{TKey, TValue}"/>s.</value>
        public int Count => 5;
        /// <summary>
        /// Gets the readability.
        /// </summary>
        /// <value>
        /// <c>true</c> if readonly, otherwise <c>false.</c>
        /// </value>
        public bool IsReadOnly => _dictionary.IsReadOnly;
        /// <summary>
        /// Throws an Exception.
        /// </summary>
        /// <exception cref="Exception">
        /// Allways, since no add is possible here.
        /// </exception>
        public void Add(Charasteristic key, bool value)
        {
            throw new ArgumentException("Adding KeyValuePairs isn't possible here!");
        }
        /// <summary>
        /// Throws an Exception.
        /// </summary>
        /// <exception cref="Exception">
        /// Allways, since no add is possible here.
        /// </exception>
        public void Add(KeyValuePair<Charasteristic, bool> item)
        {
            throw new ArgumentException("Adding KeyValuePairs isn't possible here!");
        }
        /// <summary>
        /// Re-Initialize the object.
        /// </summary>
        public void Clear() => Initialize();
        /// <summary>
        /// 
        /// </summary>
        /// <param name="item"></param>
        /// <returns></returns>
        public bool Contains(KeyValuePair<Charasteristic, bool> item) => _dictionary.Contains(item);
        /// <summary>
        /// 
        /// </summary>
        /// <param name="key"></param>
        /// <returns></returns>
        public bool ContainsKey(Charasteristic key) => _dictionary.ContainsKey(key);
        /// <summary>
        /// 
        /// </summary>
        /// <param name="array"></param>
        /// <param name="arrayIndex"></param>
        public void CopyTo(KeyValuePair<Charasteristic, bool>[] array, int arrayIndex) => _dictionary.CopyTo(array, arrayIndex);
        /// <summary>
        /// 
        /// </summary>
        /// <returns></returns>
        public IEnumerator<KeyValuePair<Charasteristic, bool>> GetEnumerator() => _dictionary.GetEnumerator();
        /// <summary>
        /// 
        /// </summary>
        /// <param name="key"></param>
        /// <returns></returns>
        public bool Remove(Charasteristic key) => false;
        /// <summary>
        /// 
        /// </summary>
        /// <param name="item"></param>
        /// <returns></returns>
        public bool Remove(KeyValuePair<Charasteristic, bool> item) => false;
        /// <summary>
        /// 
        /// </summary>
        /// <param name="key"></param>
        /// <param name="value"></param>
        /// <returns></returns>
        public bool TryGetValue(Charasteristic key, [MaybeNullWhen(false)] out bool value) => _dictionary.TryGetValue(key, out value);
        /// <summary>
        /// Returns an enumerator that iterates through the collection.
        /// </summary>
        /// <returns>An enumerator that iterates through the collection.</returns>
        IEnumerator IEnumerable.GetEnumerator() => _dictionary.GetEnumerator();
        /// <summary>
        /// Gets a short info of the characteristic.
        /// </summary>
        /// <returns>A short info of the characteristic.</returns>
        public override string ToString()
        {
            StringBuilder result = new("CharacteristicDictionary ");

            if (this[Charasteristic.CapitalLetter])
            {
                result.Append($"[{Charasteristic.CapitalLetter}] ");
            }

            if (this[Charasteristic.LowercaseLetter])
            {
                result.Append($"[{Charasteristic.LowercaseLetter}] ");
            }

            if (this[Charasteristic.Numeric])
            {
                result.Append($"[{Charasteristic.Numeric}] ");
            }

            if (this[Charasteristic.Space])
            {
                result.Append($"[{Charasteristic.Space}] ");
            }

            if (this[Charasteristic.SpecialCharacter])
            {
                result.Append($"[{Charasteristic.SpecialCharacter}] ");
            }

            return result.ToString().Trim();
        }
        /// <summary>
        /// Gets the name of this component.
        /// </summary>
        /// <value>The name of this component.</value>
        public string Name => _name;
        #endregion
    }
}
