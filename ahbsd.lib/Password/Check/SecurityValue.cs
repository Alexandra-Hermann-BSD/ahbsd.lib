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

namespace ahbsd.lib.Password.Check
{
    /// <summary>
    /// Component for the Security value of an password.
    /// </summary>
    public class SecurityValue : Component, ISecurityValue
    {
        /// <summary>
        /// The security value.
        /// </summary>
        /// <remarks>The higher, the better.</remarks>
        private ushort _security;
        /// <summary>
        /// Constructor without any parameters.
        /// </summary>
        public SecurityValue()
            : base()
        {
            Password = null;
            Initialize();
        }
        /// <summary>
        /// Constructor with a given password.
        /// </summary>
        /// <param name="password">The given password.</param>
        public SecurityValue(string password)
            : base()
        {
            Password = lib.Password.Password.GetPassword(password);
            Initialize();
        }
        /// <summary>
        /// Constructor with a given password.
        /// </summary>
        /// <param name="password">The given password.</param>
        public SecurityValue(IPassword password)
            : base()
        {
            Password = password;
            Initialize();
        }
        /// <summary>
        /// Constructor with a given owning container.
        /// </summary>
        /// <param name="container">The given owning container.</param>
        public SecurityValue(IContainer container)
            : base()
        {
            Password = null;
            Initialize();

            container?.Add(this);
        }
        /// <summary>
        /// Constructor with a given password and a given owning container.
        /// </summary>
        /// <param name="password">The given password.</param>
        /// <param name="container">The given owning container.</param>
        public SecurityValue(string password, IContainer container)
            : base()
        {
            Password = lib.Password.Password.GetPassword(password, container);
            Initialize();

            container?.Add(this, $"Password Security ({Security}) [{Password.Site}]");
        }
        /// <summary>
        /// Constructor with a given password and a given owning container.
        /// </summary>
        /// <param name="password">The given password.</param>
        /// <param name="container">The given owning container.</param>
        public SecurityValue(IPassword password, IContainer container)
            : base()
        {
            Password = password;
            Initialize();

            container?.Add(this, $"Password Security ({Security}) [{Password.Site}]");
        }
        /// <summary>
        /// Initializes the <see cref="_security"/> value.
        /// </summary>
        private void Initialize()
        {
            uint tmp = 0;
            if (Password != null && !string.IsNullOrEmpty(Password.Value))
            {
                tmp = (uint)Password.Length;
                tmp += (uint)Password.LowerCases;
                tmp += (uint)Password.UpperCases;
                tmp += (uint)(Password.Spaces * 4);
                tmp += (uint)Password.Numbers;
                tmp += (uint)(Password.Specials * 2);
            }

            _security = (ushort)(tmp % ushort.MaxValue);
        }

        /// <summary>
        /// Gets the Security Value.
        /// </summary>
        /// <returns>The Security Value.</returns>
        public override string ToString() => $"SecurityValue: {_security}";

        #region implementation of ISecurityValue
        /// <summary>
        /// Gets the password.
        /// </summary>
        /// <value>The password.</value>
        public IPassword Password { get; private set; }

        /// <summary>
        /// Gets the security.
        /// </summary>
        /// <value>The security value.</value>
        /// <remarks>The higher, the better.</remarks>
        public ushort Security => _security;
        /// <summary>
        /// Checks wheather an other object is equal to this object.
        /// </summary>
        /// <param name="obj">The other object.</param>
        /// <returns>
        /// <c>true</c> if the other object eaquals this object, otherwise
        /// <c>false</c>.
        /// </returns>
        public override bool Equals(object obj) => Equals(obj as ISecurityValue);
        /// <summary>
        /// Checks wheather an other <see cref="ISecurityValue"/> object is
        /// equal to this object.
        /// </summary>
        /// <param name="other">
        /// The other <see cref="ISecurityValue"/> object.
        /// </param>
        /// <returns>
        /// <c>true</c> if the other <see cref="ISecurityValue"/> object eaquals
        /// this object, otherwise <c>false</c>.
        /// </returns>
        public bool Equals(ISecurityValue other)
            => other != null &&
                   EqualityComparer<IPassword>.Default.Equals(Password, other.Password) &&
                   Security == other.Security;
        /// <summary>
        /// Gets the hash code.
        /// </summary>
        /// <returns>The hash code.</returns>
        public override int GetHashCode() => HashCode.Combine(Password, Security);
        #endregion

        /// <summary>
        /// Checks wheather two objects of type <see cref="SecurityValue"/>
        /// do eaquals each other.
        /// </summary>
        /// <param name="left">The object on the left side.</param>
        /// <param name="right">The object on the right side.</param>
        /// <returns>
        /// <c>true</c> if both objects are eaqual to each other, otherwise
        /// <c>false</c>.
        /// </returns>
        public static bool operator ==(SecurityValue left, SecurityValue right)
            => EqualityComparer<SecurityValue>.Default.Equals(left, right);
        /// <summary>
        /// Checks wheather two objects of type <see cref="SecurityValue"/>
        /// do not eaquals each other.
        /// </summary>
        /// <param name="left">The object on the left side.</param>
        /// <param name="right">The object on the right side.</param>
        /// <returns>
        /// <c>true</c> if both objects are not eaqual to each other, otherwise
        /// <c>false</c>.
        /// </returns>
        public static bool operator !=(SecurityValue left, SecurityValue right)
            => !(left == right);
    }
}
