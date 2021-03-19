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
using System.Diagnostics.CodeAnalysis;

namespace ahbsd.lib.Password
{
    public class CharacteristicDictionary : Component, ICharacteristicDictionary
    {
        private IDictionary<Charasteristic, bool> _dictionary;

        public CharacteristicDictionary()
            : base()
        {
            Initialize();
        }

        public CharacteristicDictionary(string value)
            : base()
        {
            Initialize(value);
        }

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

        #region implementation of ICharacteristicDictionary

        public bool this[Charasteristic key]
        {
            get => _dictionary[key];
            set => _dictionary[key] = value;
        }

        public ICollection<Charasteristic> Keys => _dictionary.Keys;

        public ICollection<bool> Values => _dictionary.Values;

        public int Count => _dictionary.Count;

        public bool IsReadOnly => _dictionary.IsReadOnly;

        public void Add(Charasteristic key, bool value)
        { }

        public void Add(KeyValuePair<Charasteristic, bool> item)
        { }

        public void Clear()
        {
            Initialize();
        }

        public bool Contains(KeyValuePair<Charasteristic, bool> item)
        {
            return _dictionary.Contains(item);
        }

        public bool ContainsKey(Charasteristic key)
        {
            return _dictionary.ContainsKey(key);
        }

        public void CopyTo(KeyValuePair<Charasteristic, bool>[] array, int arrayIndex)
        {
            _dictionary.CopyTo(array, arrayIndex);
        }

        public IEnumerator<KeyValuePair<Charasteristic, bool>> GetEnumerator()
        {
            return _dictionary.GetEnumerator();
        }

        public bool Remove(Charasteristic key)
        {
            return false;
        }

        public bool Remove(KeyValuePair<Charasteristic, bool> item)
        {
            return false;
        }

        public bool TryGetValue(Charasteristic key, [MaybeNullWhen(false)] out bool value)
        {
            return _dictionary.TryGetValue(key, out value);
        }

        IEnumerator IEnumerable.GetEnumerator()
        {
            return _dictionary.GetEnumerator();
        }
        #endregion
    }
}
