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
    public class SecurityValue : Component, ISecurityValue, IEqualityComparer<SecurityValue>
    {
        #region constructors
        /// <summary>
        /// Constructor without any parameters.
        /// </summary>
        public SecurityValue()
        {
            Password = null;
            Initialize();
        }
        
        /// <summary>
        /// Constructor with a given password.
        /// </summary>
        /// <param name="password">The given password.</param>
        public SecurityValue(string password)
        {
            Password = lib.Password.Password.GetPassword(password);
            Initialize();
        }
        
        /// <summary>
        /// Constructor with a given password.
        /// </summary>
        /// <param name="password">The given password.</param>
        public SecurityValue(IPassword password)
        {
            Password = password;
            Initialize();
        }
        
        /// <summary>
        /// Constructor with a given owning container.
        /// </summary>
        /// <param name="container">The given owning container.</param>
        public SecurityValue(IContainer container)
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
        {
            Password = password;
            Initialize();

            container?.Add(this, $"Password Security ({Security}) [{Password.Site}]");
        }
        #endregion
        
        /// <summary>
        /// Initializes the <see cref="Security"/> value.
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

            Security = (ushort)(tmp % ushort.MaxValue);
        }

        /// <summary>
        /// Gets the Security Value.
        /// </summary>
        /// <returns>The Security Value.</returns>
        public override string ToString() => $"SecurityValue: {Security}";

        #region implementation of ISecurityValue
        /// <inheritdoc/>
        public IPassword Password { get; }

        /// <inheritdoc/>
        public ushort Security { get; private set; }
        #endregion

        #region implementation of IEqualityComparer<SecurityValue>

        /// <inheritdoc/>
        public bool Equals(SecurityValue x, SecurityValue y)
        {
            if (ReferenceEquals(x, y)) return true;
            if (ReferenceEquals(x, null)) return false;
            if (ReferenceEquals(y, null)) return false;
            if (x.GetType() != y.GetType()) return false;
            return Equals(x.Password, y.Password) && x.Security == y.Security;
        }

        /// <inheritdoc/>
        public int GetHashCode(SecurityValue obj) => HashCode.Combine(obj.Password, obj.Security);

        #endregion
    }
}
