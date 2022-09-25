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
using ahbsd.lib.Attributes;

// ReSharper disable All

namespace ahbsd.lib.ApiKey
{
    /// <summary>
    /// Class for generic API-Keys.
    /// </summary>
    /// <typeparam name="T">Type of API-Key</typeparam>
    [Api]
    public partial class ApiKeyHolder<T>
    {
        /// <summary>
        /// Constructor with a given API-Key.
        /// </summary>
        /// <param name="apiKey">The API-Key.</param>
        public ApiKeyHolder(T apiKey) : base(apiKey)
        {
        }

        /// <summary>
        /// Constructor without parameters.
        /// </summary>
        /// <remarks>If before an object was created, the last API-Key will be used. Otherwise the <c>default of T will be used.</c></remarks>
        /// <exception cref="ArgumentNullException">If <see cref="KnownApiKeys"/> is <c>null</c> or something similar.</exception>
        /// <exception cref="InvalidOperationException">If anything regarding <see cref="KnownApiKeys"/> is an invalid operation.</exception>
        public ApiKeyHolder() : base()
        {
        }
    }
}
