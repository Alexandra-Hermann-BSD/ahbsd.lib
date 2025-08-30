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

namespace ahbsd.lib.Password;

/// <summary>
/// Characteristic Dictionary.
/// </summary>
[PublicAPI]
public class CharacteristicDictionary : Component, ICharacteristicDictionary
{
    /// <summary>
    /// The inner dictionary.
    /// </summary>
    private readonly IDictionary<Characteristic, bool> _dictionary;

    /// <summary>
    /// Constructor without parameter.
    /// </summary>
    public CharacteristicDictionary()
    {
        _dictionary = new Dictionary<Characteristic, bool>(5)
        {
            { Characteristic.CapitalLetter, false },
            { Characteristic.LowercaseLetter, false },
            { Characteristic.Numeric, false },
            { Characteristic.Space, false },
            { Characteristic.SpecialCharacter, false }
        };
    }

    /// <summary>
    /// Constructor with a given password.
    /// </summary>
    /// <param name="value">The given password.</param>
    internal CharacteristicDictionary(string value) : this()
    {
        Initialize(value);
    }

    /// <summary>
    /// Constructor with a given password.
    /// </summary>
    /// <param name="value">The given password.</param>
    internal CharacteristicDictionary(IPassword value) : this()
    {
        Initialize(value);
    }

    /// <summary>
    /// Constructor with a given owning container.
    /// </summary>
    /// <param name="container">The given owning container.</param>
    public CharacteristicDictionary(IContainer container) : this()
    {
        container.Add(this, Name);
    }

    /// <summary>
    /// Constructor with a given password and a given owning container.
    /// </summary>
    /// <param name="value">The given password.</param>
    /// <param name="container">The given owning container.</param>
    internal CharacteristicDictionary(string value, IContainer container) : this()
    {
        Initialize(value);

        container.Add(this, Name);
    }

    /// <summary>
    /// Constructor with a given password and a given owning container.
    /// </summary>
    /// <param name="value">The given password.</param>
    /// <param name="container">The given owning container.</param>
    internal CharacteristicDictionary(IPassword value, IContainer container) : this()
    {
        Initialize(value);

        container.Add(this, Name);
    }

    /// <summary>
    /// Initializes the <see cref="_dictionary"/> with a given password.
    /// </summary>
    /// <param name="value">The given password.</param>
    private void Initialize(string value)
    {
        _dictionary[Characteristic.CapitalLetter] = Password.GetUpperCases(value) > 0;
        _dictionary[Characteristic.LowercaseLetter] = Password.GetLowerCases(value) > 0;
        _dictionary[Characteristic.Numeric] = Password.GetNumbers(value) > 0;
        _dictionary[Characteristic.Space] = Password.GetSpaces(value) > 0;
        _dictionary[Characteristic.SpecialCharacter] = Password.GetSpecials(value) > 0;
    }

    /// <summary>
    /// Initializes the <see cref="_dictionary"/> with a given password.
    /// </summary>
    /// <param name="password">The given password.</param>
    private void Initialize(IPassword password)
    {
        _dictionary[Characteristic.CapitalLetter] = password.UpperCases > 0;
        _dictionary[Characteristic.LowercaseLetter] = password.LowerCases > 0;
        _dictionary[Characteristic.Numeric] = password.Numbers > 0;
        _dictionary[Characteristic.Space] = password.Spaces > 0;
        _dictionary[Characteristic.SpecialCharacter] = password.Specials > 0;
    }

    #region implementation of ICharacteristicDictionary

    /// <inheritdoc/>
    public bool this[Characteristic key]
    {
        get => _dictionary[key];
        set => _dictionary[key] = value;
    }

    /// <inheritdoc/>
    public ICollection<Characteristic> Keys => _dictionary.Keys;
        
    /// <inheritdoc/>
    public ICollection<bool> Values => _dictionary.Values;
        
    /// <inheritdoc/>
    public int Count => 5;
        
    /// <inheritdoc/>
    public bool IsReadOnly => _dictionary.IsReadOnly;
        
    /// <inheritdoc/>
    public void Add(Characteristic key, bool value) 
        => throw new ArgumentException("Adding KeyValuePairs isn't possible here!");

    /// <inheritdoc/>
    public void Add(KeyValuePair<Characteristic, bool> item) 
        => throw new ArgumentException("Adding KeyValuePairs isn't possible here!");

    /// <inheritdoc/>
    public void Clear()
    {
        foreach (var k in _dictionary.Keys) _dictionary[k] = false;
    }

    /// <inheritdoc/>
    public bool Contains(KeyValuePair<Characteristic, bool> item) => _dictionary.Contains(item);
        
    /// <inheritdoc/>
    public bool ContainsKey(Characteristic key) => _dictionary.ContainsKey(key);
        
    /// <inheritdoc/>
    public void CopyTo(KeyValuePair<Characteristic, bool>[] array, int arrayIndex) 
        => _dictionary.CopyTo(array, arrayIndex);
        
    /// <inheritdoc/>
    [MustDisposeResource]
    public IEnumerator<KeyValuePair<Characteristic, bool>> GetEnumerator() => _dictionary.GetEnumerator();
        
    /// <inheritdoc/>
    public bool Remove(Characteristic key) => false;
        
    /// <inheritdoc/>
    public bool Remove(KeyValuePair<Characteristic, bool> item) => false;
        
    /// <inheritdoc/>
    public bool TryGetValue(Characteristic key, out bool value) 
        => _dictionary.TryGetValue(key, out value);
        
    /// <inheritdoc/>
    [MustDisposeResource]
    IEnumerator IEnumerable.GetEnumerator() => _dictionary.GetEnumerator();
        
    /// <inheritdoc cref="ICharacteristicDictionary.ToString"/>
    public override string ToString()
    {
        var result = new StringBuilder("CharacteristicDictionary ");
        var added = 0;

        if (this[Characteristic.CapitalLetter])
        {
            result.Append($"[{Characteristic.CapitalLetter}] ");
            added++;
        }

        if (this[Characteristic.LowercaseLetter])
        {
            result.Append($"[{Characteristic.LowercaseLetter}] ");
            added++;
        }

        if (this[Characteristic.Numeric])
        {
            result.Append($"[{Characteristic.Numeric}] ");
            added++;
        }

        if (this[Characteristic.Space])
        {
            result.Append($"[{Characteristic.Space}] ");
            added++;
        }

        if (this[Characteristic.SpecialCharacter])
        {
            result.Append($"[{Characteristic.SpecialCharacter}] ");
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