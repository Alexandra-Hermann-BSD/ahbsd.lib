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
using System.ComponentModel;
using System.Linq;
using ahbsd.lib.EventArgs;
using ahbsd.lib.EventHandler;
using ahbsd.lib.Extensions;
using ahbsd.lib.Password.Check;
using JetBrains.Annotations;

namespace ahbsd.lib.Password;

/// <summary>
/// A Password class.
/// </summary>
[PublicAPI]
public sealed partial class Password : Component, IPassword
{
    /// <summary>
    /// The value.
    /// </summary>
    private string _value;

    /// <summary>
    /// Constructor without any parameter.
    /// </summary>
    public Password()
    {
        Container = new Container();
        Characteristics = new CharacteristicDictionary();
        InitializeComponent();
        _value = string.Empty;
        Initialize();
        SecurityValue = new SecurityValue(this);
        OnChange += Password_OnChange;
    }

    /// <summary>
    /// Constructor with a given password.
    /// </summary>
    /// <param name="passwd">The given password.</param>
    public Password(string passwd)
    {
        Container = new Container();
        Characteristics = new CharacteristicDictionary();
        InitializeComponent();
        _value = passwd;
        Initialize();
        SecurityValue = new SecurityValue(this);
        OnChange += Password_OnChange;
    }

    /// <summary>
    /// Constructor with a given owning container.
    /// </summary>
    /// <param name="container">The given owning container.</param>
    public Password(IContainer container)
    {
        Container = new Container();
        Characteristics = new CharacteristicDictionary();
        InitializeComponent();
        _value = string.Empty;
        Initialize();

        container.Add(this, $"Password_{GetHashCode()}");
        SecurityValue = new SecurityValue(this, container);
        OnChange += Password_OnChange;
    }

    /// <summary>
    /// Constructor with a given password and a given owning container.
    /// </summary>
    /// <param name="passwd">The given password.</param>
    /// <param name="container">The given owning container.</param>
    public Password(string passwd, IContainer container)
    {
        Characteristics = new CharacteristicDictionary();
        Container = new Container();
        InitializeComponent();
        _value = passwd;
        Initialize();

        container.Add(this, $"Password_{GetHashCode()}");
        SecurityValue = new SecurityValue(this, container);

        OnChange += Password_OnChange;
    }

    /// <summary>
    /// Initializing this object.
    /// </summary>
    private void Initialize()
    {
        Length = _value.Length;
        LowerCases = 0;
        UpperCases = 0;
        Spaces = 0;
        Specials = 0;

        foreach (var c in _value)
        {
            switch (GetCharasteristic(c))
            {
                case Characteristic.LowercaseLetter:
                    LowerCases++;
                    break;
                case Characteristic.CapitalLetter:
                    UpperCases++;
                    break;
                case Characteristic.Space:
                    Spaces++;
                    break;
                case Characteristic.Numeric:
                    Numbers++;
                    break;
                case Characteristic.SpecialCharacter:
                    Specials++;
                    break;
                default:
                    // Do nothing, as this is not a valid characteristic.
                    break;
            }
        }

        Characteristics = Container != null
            ? new CharacteristicDictionary(this, Container)
            : new CharacteristicDictionary(this);
    }

    /// <summary>
    ///
    /// </summary>
    public new IContainer Container { get; private set; }

    /// <summary>
    /// When the password changes, all variables must be updated as well.
    /// </summary>
    /// <param name="sender">The sending object.</param>
    /// <param name="e">The ChangeEventArg.</param>
    private void Password_OnChange(object sender, ChangeEventArgs<IPassword>? e)
    {
        if (e?.NewValue != null)
        {
            _value = e.NewValue.Value;
            Length = e.NewValue.Length;
            LowerCases = e.NewValue.LowerCases;
            UpperCases = e.NewValue.UpperCases;
            Spaces = e.NewValue.Spaces;
            Specials = e.NewValue.Specials;
            Characteristics = e.NewValue.Characteristics;
        }
        else
        {
            Length = 0;
            LowerCases = 0;
            UpperCases = 0;
            Spaces = 0;
            Specials = 0;
            Numbers = 0;
            Characteristics = new CharacteristicDictionary(this, Container);
        }
    }

    #region implementation of IPassword
    /// <inheritdoc/>
    public string Value
    {
        get => _value;
        set
        {
            if (!value.IsNullOrWhiteSpace() && !value.Equals(this._value))
            {
                var tmp = GetTemporaryPassword(value);
                    
                var cea = new ChangeEventArgs<IPassword>(MemberwiseClone() as IPassword, tmp);

                this._value = value;
                SecurityValue = tmp.SecurityValue;

                OnChange?.Invoke(this, cea);
            }
        }
    }

    /// <summary>
    /// Gets the temporary password.
    /// </summary>
    /// <param name="newPassword">The new password</param>
    /// <returns>The temporary password</returns>
    private IPassword GetTemporaryPassword(string newPassword)
    {
        var tmp = Container != null
            ? GetPassword(newPassword, Container)
            : GetPassword(newPassword);

        if (OnChange != null)
        {
            tmp.OnChange += OnChange;
        }

        return tmp;
    }

    /// <inheritdoc/>
    public int Length { get; private set; }

    /// <inheritdoc/>
    public int LowerCases { get; private set; }

    /// <inheritdoc/>
    public int UpperCases { get; private set; }

    /// <inheritdoc/>
    public int Numbers { get; private set; }

    /// <inheritdoc/>
    public int Spaces { get; private set; }

    /// <inheritdoc/>
    public int Specials { get; private set; }

    /// <inheritdoc/>
    public ICharacteristicDictionary Characteristics { get; private set; }
        
    /// <inheritdoc/>
    public event ChangeEventHandler<IPassword>? OnChange;

    /// <inheritdoc/>
    public ISecurityValue SecurityValue { get; private set; }

    /// <inheritdoc/>
    public override bool Equals(object? obj) => Equals(obj as IPassword);

    /// <inheritdoc/>
    public bool Equals(IPassword? other) => other != null && string.Equals(Value, other.Value, StringComparison.Ordinal);

    /// <inheritdoc/>
    public override int GetHashCode() => Value?.GetHashCode() ?? 0;
    #endregion

    /// <summary>
    /// Gets the password characteristics of the given string.
    /// </summary>
    /// <param name="value">The given string.</param>
    /// <returns>The password characteristics.</returns>
    public static ICharacteristicDictionary GetCharacteristics(string value)
        => new CharacteristicDictionary(value);

    /// <summary>
    /// Gets a Password from a given string.
    /// </summary>
    /// <param name="value">The given string.</param>
    /// <returns>The Password.</returns>
    public static IPassword GetPassword(string value) => new Password(value);

    /// <summary>
    /// Gets a Password from a given string.
    /// </summary>
    /// <param name="value">The given string.</param>
    /// <param name="container">An owning container.</param>
    /// <returns>The Password.</returns>
    public static IPassword GetPassword(string value, IContainer container) => new Password(value, container);

    /// <summary>
    /// Gets the amount of lower cases in the given string.
    /// </summary>
    /// <param name="value">The given string.</param>
    /// <returns>The amount of lower cases.</returns>
    public static int GetLowerCases(string value) 
        => !value.IsNullOrWhiteSpace()
            ? (from char c in value
                where char.IsLower(c)
                select c).Count()
            : 0;

    /// <summary>
    /// Gets the amount of upper cases in the given string.
    /// </summary>
    /// <param name="value">The given string.</param>
    /// <returns>The amount of upper cases.</returns>
    public static int GetUpperCases(string value) 
        => !value.IsNullOrWhiteSpace()
            ? (from char c in value
                where char.IsUpper(c)
                select c).Count()
            : 0;

    /// <summary>
    /// Gets the amount of spaces in the given string.
    /// </summary>
    /// <param name="value">The given string.</param>
    /// <returns>The amount of spaces.</returns>
    public static int GetSpaces(string value) 
        => !value.IsNullOrEmpty()
            ? (from char c in value
                where char.IsWhiteSpace(c)
                select c).Count()
            : 0;

    /// <summary>
    /// Gets the amount of numbers in the given string.
    /// </summary>
    /// <param name="value">The given string.</param>
    /// <returns>The amount of numbers.</returns>
    public static int GetNumbers(string value) 
        => !value.IsNullOrWhiteSpace()
            ? (from char c in value
                where char.IsNumber(c)
                select c).Count()
            : 0;

    /// <summary>
    /// Gets the amount of special chars in the given string.
    /// </summary>
    /// <param name="value">The given string.</param>
    /// <returns>The amount of special chars.</returns>
    public static int GetSpecials(string value) 
        => !value.IsNullOrWhiteSpace() 
            ? value.Count(ctmp => GetCharasteristic(ctmp) == Characteristic.SpecialCharacter)
            : 0;

    /// <summary>
    /// Gets the <see cref="Characteristic"/> of a given <see cref="char"/>.
    /// </summary>
    /// <param name="c">The given <see cref="char"/>.</param>
    /// <returns>The <see cref="Characteristic"/>.</returns>
    public static Characteristic GetCharasteristic(char c)
    {
        var finished = char.IsWhiteSpace(c);
        var isLetter = char.IsLetter(c);

        var result = Characteristic.Space;

        if (!finished)
        {
            if (isLetter)
            {
                if (char.IsUpper(c))
                {
                    result = Characteristic.CapitalLetter;
                }
                else if (char.IsLower(c))
                {
                    result = Characteristic.LowercaseLetter;
                }
            }
            else
            {
                result = char.IsNumber(c) ? Characteristic.Numeric : Characteristic.SpecialCharacter;
            }
        }
            
        return result;
    }

    /// <summary>
    /// Gets a simple description on the current password including the <see cref="SecurityValue"/>.
    /// </summary>
    /// <returns>A simple description on the current password</returns>
    public override string ToString()
        => $"'{_value}' ({SecurityValue.Security})";

    /// <summary>
    /// Compares two <see cref="Password"/>s.
    /// </summary>
    /// <param name="left">The password on the left side.</param>
    /// <param name="right">The password on the right side.</param>
    /// <returns>
    /// <c>true</c> if both passwords eaquals, otherwise <c>false</c>.
    /// </returns>
    public static bool operator ==(Password left, Password right)
        => EqualityComparer<Password>.Default.Equals(left, right);

    /// <summary>
    /// Compares two <see cref="Password"/>s.
    /// </summary>
    /// <param name="left">The password on the left side.</param>
    /// <param name="right">The password on the right side.</param>
    /// <returns>
    /// <c>true</c> if both passwords do not eaquals, otherwise <c>false</c>.
    /// </returns>
    public static bool operator !=(Password left, Password right)
        => !(left == right);
}