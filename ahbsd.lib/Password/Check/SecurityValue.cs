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
    public class SecurityValue : Component, ISecurityValue
    {
        private ushort _security;

        public SecurityValue()
            : base()
        {
            Password = null;
            Initialize();
        }

        public SecurityValue(string password)
            : base()
        {
            Password = lib.Password.Password.GetPassword(password);
            Initialize();
        }

        public SecurityValue(IPassword password)
            : base()
        {
            Password = password;
            Initialize();
        }

        public SecurityValue(IContainer container)
            : base()
        {
            Password = null;
            Initialize();

            if (container != null)
            {
                container.Add(this);
            }
        }

        public SecurityValue(string password, IContainer container)
            : base()
        {
            Password = lib.Password.Password.GetPassword(password, container);
            Initialize();

            if (container != null)
            {
                container.Add(this, $"Password Security ({Security}) [{Password.Site}]");
            }
        }

        public SecurityValue(IPassword password, IContainer container)
            : base()
        {
            Password = password;
            Initialize();

            if (container != null)
            {
                container.Add(this, $"Password Security ({Security}) [{Password.Site}]");
            }
        }

        private void Initialize()
        {
            if (Password != null)
            {
                _security = (ushort)(Password.Length % ushort.MaxValue);
                _security += (ushort)Password.LowerCases;
                _security += (ushort)Password.UpperCases;
                _security += (ushort)Password.Spaces;
                _security += (ushort)Password.Numbers;
                _security += (ushort)Password.Specials;
            }
            else
            {
                _security = 0;
            }
        }

        #region implementation of ISecurityValue
        /// <summary>
        /// Gets the password.
        /// </summary>
        /// <value>The password.</value>
        public IPassword Password { get; private set; }

        /// <summary>
        /// Gets the security.
        /// </summary>
        /// <value>The security.</value>
        /// <remarks>The higher, the better.</remarks>
        public ushort Security => _security;

        public override bool Equals(object obj)
        {
            return Equals(obj as ISecurityValue);
        }

        public bool Equals(ISecurityValue other)
        {
            return other != null &&
                   EqualityComparer<IPassword>.Default.Equals(Password, other.Password) &&
                   Security == other.Security;
        }

        public override int GetHashCode()
        {
            return HashCode.Combine(Password, Security);
        }
        #endregion

        public static bool operator ==(SecurityValue left, SecurityValue right)
        {
            return EqualityComparer<SecurityValue>.Default.Equals(left, right);
        }

        public static bool operator !=(SecurityValue left, SecurityValue right)
        {
            return !(left == right);
        }
    }
}
