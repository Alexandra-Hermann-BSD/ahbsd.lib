// 
//     ahbsd.lib
//     ahbsd.lib
//     IApiKeyHolder.cs
// 
//     Copyright 2023 Alexandra Hermann – Beratung, Software, Design
// 
//     Licensed under the Apache License, Version 2.0 (the "License");
//     you may not use this file except in compliance with the License.
//     You may obtain a copy of the License at
// 
//         http://www.apache.org/licenses/LICENSE-2.0
// 
//     Unless required by applicable law or agreed to in writing, software
//     distributed under the License is distributed on an "AS IS" BASIS,
//     WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//     See the License for the specific language governing permissions and
//     limitations under the License.
// 

using System.Collections.Generic;
using ahbsd.lib.ApiKey;
using ahbsd.lib.Attributes;

namespace ahbsd.lib.Interfaces
{
    /// <summary>
    /// Interface for ApiKeyHolder in general
    /// </summary>
    /// <typeparam name="T">The type of the ApiKey</typeparam>
    [Api]
    public interface IApiKeyHolder<T> : IEqualityComparer<T>
    {
        /// <summary>
        /// Determines whether the given other equals this object.
        /// </summary>
        /// <param name="other">The other object</param>
        /// <returns>Is the other object equal to this?</returns>
        bool Equals(T other);

        /// <summary>
        /// Happens if a new API-Key was added to the static list <see cref="ApiKeyHolder{T}.KnownApiKeys"/>.
        /// </summary>
        event ApiKeyEventHandler<T> OnApiKeyAdded;
    }
}