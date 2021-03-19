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

namespace ahbsd.lib.Password
{
    /// <summary>
    /// A Password class.
    /// </summary>
    public class Password : Component, IPassword
    {
        /// <summary>
        /// The value.
        /// </summary>
        private string _value;

        private int _length, _lower, _upper, _spaces, _specials, _numbers;

        /// <summary>
        /// Constructor without any parameter.
        /// </summary>
        public Password()
            : base()
        {
            _value = string.Empty;
            Initialize();

            OnChange += Password_OnChange;
        }

        /// <summary>
        /// Constructor with a given password.
        /// </summary>
        /// <param name="passwd">The given password.</param>
        public Password(string passwd)
            : base()
        {
            _value = passwd;
            Initialize();
            OnChange += Password_OnChange;
        }

        /// <summary>
        /// Constructor with a given owning container.
        /// </summary>
        /// <param name="container">The given owning container.</param>
        public Password(IContainer container)
            : base()
        {
            _value = string.Empty;
            Initialize();

            if (container != null)
            {
                container.Add(this, $"Password_{GetHashCode()}");
            }
            OnChange += Password_OnChange;
        }

        /// <summary>
        /// Constructor with a given password and a given owning container.
        /// </summary>
        /// <param name="passwd">The given password.</param>
        /// <param name="container">The given owning container.</param>
        public Password(string passwd, IContainer container)
            : base()
        {
            _value = passwd;
            Initialize();

            if (container != null)
            {
                container.Add(this, $"Password_{GetHashCode()}");
            }

            OnChange += Password_OnChange;
        }

        /// <summary>
        /// Initializing this object.
        /// </summary>
        private void Initialize()
        {
            _length = _value.Length;
            _lower = GetLowerCases(_value);
            _upper = GetUpperCases(_value);
            _spaces = GetSpaces(_value);
            _specials = GetSpecials(_value);
            Characteristics = GetCharasteristics(_value);
        }

        /// <summary>
        /// When the password changes, all variables must be updated as well.
        /// </summary>
        /// <param name="sender">The sending object.</param>
        /// <param name="e">The ChangeEventArg.</param>
        private void Password_OnChange(object sender, ChangeEventArgs<IPassword> e)
        {
            if (e.NewValue != null)
            {
                _value = e.NewValue.Value;
                _length = e.NewValue.Length;
                _lower = e.NewValue.LowerCases;
                _upper = e.NewValue.UpperCases;
                _spaces = e.NewValue.Spaces;
                _specials = e.NewValue.Specials;
                Characteristics = e.NewValue.Characteristics;
            }
            else
            {
                _length = 0;
                _lower = 0;
                _upper = 0;
                _spaces = 0;
                _specials = 0;
                _numbers = 0;
                Characteristics = GetCharasteristics(null);
            }
        }

        #region implementation of IPassword
        /// <summary>
        /// Gets or sets the value.
        /// </summary>
        /// <value>The value.</value>
        public string Value
        {
            get => _value;
            set
            {
                IPassword tmp;

                if (!string.IsNullOrEmpty(value) && !value.Equals(_value))
                {
                    if (Container != null)
                    {
                        tmp = GetPassword(value, Container);
                    }
                    else
                    {
                        tmp = GetPassword(value);
                    }
                    ChangeEventArgs<IPassword> cea = new ChangeEventArgs<IPassword>(this, tmp);

                    _value = value;

                    OnChange?.Invoke(this, cea);
                }
            }
        }
        /// <summary>
        /// Gets the length of the password.
        /// </summary>
        /// <value>The length of the password.</value>
        public int Length => _length;
        /// <summary>
        /// Gets the amount of lower cases.
        /// </summary>
        /// <value>The amount of lower cases.</value>
        public int LowerCases => _lower;
        /// <summary>
        /// Gets the amount of upper cases.
        /// </summary>
        /// <value>The amount of upper cases.</value>
        public int UpperCases => _upper;
        /// <summary>
        /// Gets the amount of numbers.
        /// </summary>
        /// <value>The amount of numbers.</value>
        public int Numbers => _numbers;
        /// <summary>
        /// Gets the amount of spaces.
        /// </summary>
        /// <value>The amount of spaces.</value>
        public int Spaces => _spaces;
        /// <summary>
        /// Gets the amount of special cases.
        /// </summary>
        /// <value>The amount of special cases.</value>
        public int Specials => _specials;
        /// <summary>
        /// Gets the characteristics of a password.
        /// </summary>
        public ICharacteristicDictionary Characteristics { get; private set; }
        /// <summary>
        /// Happenes, when the <see cref="Value"/> changes.
        /// </summary>
        public event ChangeEventHandler<IPassword> OnChange;

        /// <summary>
        /// Compares an other object with this object.
        /// </summary>
        /// <param name="obj">The other object.</param>
        /// <returns>
        /// <c>true</c> if the other object eaquals this password, otherwise
        /// <c>false</c>.
        /// </returns>
        public override bool Equals(object obj)
        {
            return Equals(obj as IPassword);
        }

        /// <summary>
        /// Compares an other <see cref="IPassword"/> with this object.
        /// </summary>
        /// <param name="other">The other IPassword.</param>
        /// <returns>
        /// <c>true</c> if the other IPassword eaquals this password, otherwise
        /// <c>false</c>.
        /// </returns>
        public bool Equals(IPassword other)
        {
            return other != null &&
                   Value == other.Value;
        }

        /// <summary>
        /// Gets the HashCode.
        /// </summary>
        /// <returns>The HashCode.</returns>
        public override int GetHashCode()
        {
            return HashCode.Combine(Value);
        }
        #endregion

        /// <summary>
        /// Gets the password charasteristics of the given string.
        /// </summary>
        /// <param name="value">The given string.</param>
        /// <returns>The password charasteristics.</returns>
        public static ICharacteristicDictionary GetCharasteristics(string value)
        {
            ICharacteristicDictionary result = new CharacteristicDictionary(value);

            return result;
        }

        /// <summary>
        /// Gets a Password from a given string.
        /// </summary>
        /// <param name="value">The given string.</param>
        /// <returns>The Password.</returns>
        public static IPassword GetPassword(string value)
        {
            IPassword result = new Password(value);
            return result;
        }

        /// <summary>
        /// Gets a Password from a given string.
        /// </summary>
        /// <param name="value">The given string.</param>
        /// <param name="container">An owning container.</param>
        /// <returns>The Password.</returns>
        public static IPassword GetPassword(string value, IContainer container)
        {
            IPassword result = new Password(value, container);
            return result;
        }

        /// <summary>
        /// Gets the amount of lower cases in the given string.
        /// </summary>
        /// <param name="value">The given string.</param>
        /// <returns>The amount of lower cases.</returns>
        public static int GetLowerCases(string value)
        {
            int result = 0;
            string stmp;
            char ctmp;

            if (!string.IsNullOrEmpty(value))
            {
                for (int i = 0; i < value.Length; i++)
                {
                    ctmp = value[i];
                    stmp = ctmp.ToString();
                    if (stmp.ToLower().Equals(stmp))
                    {
                        result++;
                    }
                }
            }

            return result;
        }

        /// <summary>
        /// Gets the amount of upper cases in the given string.
        /// </summary>
        /// <param name="value">The given string.</param>
        /// <returns>The amount of upper cases.</returns>
        public static int GetUpperCases(string value)
        {
            int result = 0;
            string stmp;
            char ctmp;

            if (!string.IsNullOrEmpty(value))
            {
                for (int i = 0; i < value.Length; i++)
                {
                    ctmp = value[i];
                    stmp = ctmp.ToString();
                    if (stmp.ToUpper().Equals(stmp))
                    {
                        result++;
                    }
                }
            }

            return result;
        }

        /// <summary>
        /// Gets the amount of spaces in the given string.
        /// </summary>
        /// <param name="value">The given string.</param>
        /// <returns>The amount of spaces.</returns>
        public static int GetSpaces(string value)
        {
            int result = 0;
            char ctmp;

            if (!string.IsNullOrEmpty(value))
            {
                for (int i = 0; i < value.Length; i++)
                {
                    ctmp = value[i];

                    if (ctmp.Equals(' '))
                    {
                        result++;
                    }
                }
            }

            return result;
        }

        /// <summary>
        /// Gets the amount of numbers in the given string.
        /// </summary>
        /// <param name="value">The given string.</param>
        /// <returns>The amount of numbers.</returns>
        public static int GetNumbers(string value)
        {
            int result = 0;
            char ctmp;
            ushort? ustmp;

            if (!string.IsNullOrEmpty(value))
            {
                for (int i = 0; i < value.Length; i++)
                {
                    ctmp = value[i];

                    try
                    {
                        ustmp = ushort.Parse(ctmp.ToString());
                    }
                    catch (Exception)
                    {
                        ustmp = null;
                    }

                    if (ustmp != null)
                    {
                        result++;
                    }
                }
            }

            return result;
        }

        /// <summary>
        /// Gets the amount of special chars in the given string.
        /// </summary>
        /// <param name="value">The given string.</param>
        /// <returns>The amount of special chars.</returns>
        public static int GetSpecials(string value)
        {
            int result = 0;
            char ctmp;
            string stmp;

            if (!string.IsNullOrEmpty(value))
            {
                for (int i = 0; i < value.Length; i++)
                {
                    ctmp = value[i];
                    stmp = ctmp.ToString();

                    if (GetCharasteristic(ctmp) == Charasteristic.SpecialCharacter)
                    {
                        result++;
                    }
                }
            }

            return result;
        }

        /// <summary>
        /// Gets the <see cref="Charasteristic"/> of a given <see cref="char"/>.
        /// </summary>
        /// <param name="c">The given <see cref="char"/>.</param>
        /// <returns>The <see cref="Charasteristic"/>.</returns>
        public static Charasteristic GetCharasteristic(char c)
        {
            Charasteristic result = Charasteristic.Space;
            bool finished = false;
            bool isLetter = false;
            string tmp = c.ToString();
            ushort usTmp;

            if (c.Equals(' '))
            {
                finished = true;
            }

            if (!finished)
            {
                finished = tmp.ToUpper().Equals(tmp);
                if (finished)
                {
                    result = Charasteristic.CapitalLetter;
                }
            }

            if (!finished)
            {
                finished = tmp.ToLower().Equals(tmp);
                if (finished)
                {
                    result = Charasteristic.LowercaseLetter;
                }
            }

            if (!finished)
            {
                try
                {
                    usTmp = ushort.Parse(tmp);
                    result = Charasteristic.Numeric;
                    finished = true;
                }
                catch (Exception)
                { }
            }

            if (result != Charasteristic.Numeric)
            {
                foreach (char item in "ABCDEFGHIJKLMNOPQRSTUVWXYZ")
                {
                    if (tmp.ToUpper().Equals(item.ToString()))
                    {
                        isLetter = true;
                        break;
                    }
                }

                if (!isLetter)
                {
                    result = Charasteristic.SpecialCharacter;
                }
            }

            return result;
        }

        /// <summary>
        /// Compares two <see cref="Password"/>s.
        /// </summary>
        /// <param name="left">The password on the left side.</param>
        /// <param name="right">The password on the right side.</param>
        /// <returns>
        /// <c>true</c> if both passwords eaquals, otherwise <c>false</c>.
        /// </returns>
        public static bool operator ==(Password left, Password right)
        {
            return EqualityComparer<Password>.Default.Equals(left, right);
        }

        /// <summary>
        /// Compares two <see cref="Password"/>s.
        /// </summary>
        /// <param name="left">The password on the left side.</param>
        /// <param name="right">The password on the right side.</param>
        /// <returns>
        /// <c>true</c> if both passwords do not eaquals, otherwise <c>false</c>.
        /// </returns>
        public static bool operator !=(Password left, Password right)
        {
            return !(left == right);
        }
    }
}
