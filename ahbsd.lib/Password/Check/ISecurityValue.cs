﻿//
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

using System.ComponentModel;

namespace ahbsd.lib.Password.Check
{
    /// <summary>
    /// An Interface for getting the security value of a given
    /// <see cref="IPassword"/>.
    /// </summary>
    public interface ISecurityValue : IComponent
    {
        /// <summary>
        /// Gets the password.
        /// </summary>
        /// <value>The password.</value>
        IPassword Password { get; }
        /// <summary>
        /// Gets the security.
        /// </summary>
        /// <value>The security.</value>
        /// <remarks>The higher, the better.</remarks>
        ushort Security { get; }
    }
}
