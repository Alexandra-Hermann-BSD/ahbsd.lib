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
using ahbsd.lib.Password.Check;

namespace ahbsd.lib.Password
{
    /// <summary>
    /// A Password class.
    /// </summary>
    public sealed class Password : Component, IPassword
    {
        /// <summary>
        /// The value.
        /// </summary>
        private string value;

        /// <summary>
        /// Constructor without any parameter.
        /// </summary>
        public Password()
        {
            value = string.Empty;
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
            value = passwd;
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
            value = string.Empty;
            Initialize();

            if (container != null)
            {
                container.Add(this, $"Password_{GetHashCode()}");
                SecurityValue = new SecurityValue(this, container);
            }
            else
            {
                SecurityValue = new SecurityValue(this);
            }
            OnChange += Password_OnChange;
        }

        /// <summary>
        /// Constructor with a given password and a given owning container.
        /// </summary>
        /// <param name="passwd">The given password.</param>
        /// <param name="container">The given owning container.</param>
        public Password(string passwd, IContainer container)
        {
            value = passwd;
            Initialize();

            if (container != null)
            {
                container.Add(this, $"Password_{GetHashCode()}");
                SecurityValue = new SecurityValue(this, container);
            }
            else
            {
                SecurityValue = new SecurityValue(this);
            }

            OnChange += Password_OnChange;
        }

        /// <summary>
        /// Initializing this object.
        /// </summary>
        private void Initialize()
        {
            CharacteristicDictionary tmp;

            Length = value.Length;
            LowerCases = 0;
            UpperCases = 0;
            Spaces = 0;
            Specials = 0;

            foreach (var c in value)
            {
                switch (GetCharasteristic(c))
                {
                    case Charasteristic.LowercaseLetter:
                        LowerCases++;
                        break;
                    case Charasteristic.CapitalLetter:
                        UpperCases++;
                        break;
                    case Charasteristic.Space:
                        Spaces++;
                        break;
                    case Charasteristic.Numeric:
                        Numbers++;
                        break;
                    case Charasteristic.SpecialCharacter:
                        Specials++;
                        break;
                }
            }
            tmp = new CharacteristicDictionary(this, Container);
            
            Characteristics = tmp;
        }

        /// <summary>
        /// When the password changes, all variables must be updated as well.
        /// </summary>
        /// <param name="sender">The sending object.</param>
        /// <param name="e">The ChangeEventArg.</param>
        private void Password_OnChange(object sender, ChangeEventArgs<IPassword> e)
        {
            if (e?.NewValue != null)
            {
                value = e.NewValue.Value;
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
            get => value;
            set
            {
                if (!string.IsNullOrWhiteSpace(value) && !value.Equals(this.value))
                {
                    var tmp = GetTemporaryPassword(value);
                    
                    ChangeEventArgs<IPassword> cea = new(MemberwiseClone() as IPassword, tmp);

                    this.value = value;
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
            IPassword tmp;
            if (Container != null)
            {
                tmp = GetPassword(newPassword, Container);
                if (OnChange != null)
                {
                    tmp.OnChange += OnChange;
                }
            }
            else
            {
                tmp = GetPassword(newPassword);
                if (OnChange != null)
                {
                    tmp.OnChange += OnChange;
                }
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
        public event ChangeEventHandler<IPassword> OnChange;

        /// <inheritdoc/>
        public ISecurityValue SecurityValue { get; private set; }

        /// <inheritdoc/>
        public override bool Equals(object obj) => Equals(obj as IPassword);

        /// <inheritdoc/>
        public bool Equals(IPassword other) => other != null && Value == other.Value;

        /// <inheritdoc/>
        public override int GetHashCode() => HashCode.Combine(Value);
        #endregion

        /// <summary>
        /// Gets the password charasteristics of the given string.
        /// </summary>
        /// <param name="value">The given string.</param>
        /// <returns>The password charasteristics.</returns>
        public static ICharacteristicDictionary GetCharasteristics(string value)
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
            => !string.IsNullOrWhiteSpace(value)
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
            => !string.IsNullOrWhiteSpace(value)
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
            => !string.IsNullOrEmpty(value)
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
            => !string.IsNullOrWhiteSpace(value)
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
            => !string.IsNullOrWhiteSpace(value) 
                ? value.Count(ctmp => GetCharasteristic(ctmp) == Charasteristic.SpecialCharacter) 
                : 0;

        /// <summary>
        /// Gets the <see cref="Charasteristic"/> of a given <see cref="char"/>.
        /// </summary>
        /// <param name="c">The given <see cref="char"/>.</param>
        /// <returns>The <see cref="Charasteristic"/>.</returns>
        public static Charasteristic GetCharasteristic(char c)
        {
            var finished = char.IsWhiteSpace(c);
            var isLetter = char.IsLetter(c);

            var result = Charasteristic.Space;

            if (!finished)
            {
                if (isLetter)
                {
                    if (char.IsUpper(c))
                    {
                        result = Charasteristic.CapitalLetter;
                    }
                    else if (char.IsLower(c))
                    {
                        result = Charasteristic.LowercaseLetter;
                    }
                }
                else
                {
                    result = char.IsNumber(c) ? Charasteristic.Numeric : Charasteristic.SpecialCharacter;
                }
            }
            
            return result;
        }

        /// <summary>
        /// Gets a simple description on the current password including the <see cref="SecurityValue"/>.
        /// </summary>
        /// <returns>A simple description on the current password</returns>
        public override string ToString()
            => $"'{value}' ({SecurityValue.Security})";

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
}
