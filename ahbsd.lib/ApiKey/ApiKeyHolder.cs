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
using System.Linq;

namespace ahbsd.lib.ApiKey
{
    /// <summary>
    /// Class for generic API-Keys.
    /// </summary>
    /// <typeparam name="T">Type of API-Key</typeparam>
    public class ApiKeyHolder<T> : IEquatable<ApiKeyHolder<T>>
    {
        /// <summary>
        /// The API-Key.
        /// </summary>
        private readonly T _apiKey;
        /// <summary>
        /// Gets the API-Key.
        /// </summary>
        /// <value>The API-Key.</value>
        protected T ApiKey => _apiKey;

        /// <summary>
        /// A list of all known API-Keys.
        /// </summary>
        /// <remarks>Of current instances. Is eg needed for construction without api-key etc.</remarks>
        protected internal static List<T> KnownApiKeys;
        /// <summary>
        /// Happens if a new API-Key was added to the static list <see cref="KnownApiKeys"/>.
        /// </summary>
        protected internal static event ApiKeyEventHandler<T> OnApiKeyAdded;

        /// <summary>
        /// Static constructor.
        /// </summary>
        static ApiKeyHolder()
        {
            KnownApiKeys = new List<T>();
        }

        /// <summary>
        /// Constructor with a given API-Key.
        /// </summary>
        /// <param name="apiKey">The API-Key.</param>
        public ApiKeyHolder(T apiKey)
        {
            _apiKey = apiKey;
            AddApiKey(this, apiKey);
        }

        /// <summary>
        /// Constructor without parameters.
        /// </summary>
        /// <remarks>If before an object was created, the last API-Key will be used. Otherwise the <c>default of T will be used.</c></remarks>
        /// <exception cref="ArgumentNullException">If <see cref="KnownApiKeys"/> is <c>null</c> or something similar.</exception>
        /// <exception cref="InvalidOperationException">If anything regarding <see cref="KnownApiKeys"/> is an invalid operation.</exception>
        public ApiKeyHolder()
        {
            if (KnownApiKeys.Count > 0)
            {
                _apiKey = KnownApiKeys.Last();
            }
            else
            {
                _apiKey = default;
            }
            AddApiKey(this, ApiKey);
        }

        /// <summary>
        /// Functionality when a new API-Key was added.
        /// </summary>
        /// <param name="sender">Sending Object</param>
        /// <param name="apiKey">New API-Key</param>
        private static void AddApiKey(object sender, T apiKey)
        {
            ApiKeyEventArgs<T> e;
            int idx;

            if (!KnownApiKeys.Contains(apiKey))
            {
                KnownApiKeys.Add(apiKey);
                idx = KnownApiKeys.IndexOf(apiKey);
                e = new ApiKeyEventArgs<T>(apiKey, idx);
                OnApiKeyAdded?.Invoke(sender, e);
            }
        }

        /// <summary>
        /// Looks for a given API-Key.
        /// </summary>
        /// <param name="apiKey">The given API-Key.</param>
        /// <returns>If found it returns the index, if not <c>null</c> is returned.</returns>
        public static int? FindApiKey(T apiKey)
        {
            int? result = null;

            if (KnownApiKeys.Contains(apiKey))
            {
                result = KnownApiKeys.IndexOf(apiKey);
            }

            return result;
        }

        /// <summary>
        /// Returns an API-Key from a defined index number.
        /// </summary>
        /// <param name="idx">The defined index number.</param>
        /// <returns>An API-Key.</returns>
        public static T GetApiKey(int idx)
        {
            return KnownApiKeys[idx];
        }

        /// <summary>
        /// Find out, if this object equals another given object.
        /// </summary>
        /// <param name="obj">The other object.</param>
        /// <returns>If both objects equals <c>TRUE</c>, otherwise <c>FALSE</c>.</returns>
        public override bool Equals(object obj)
        {
            return Equals(obj as ApiKeyHolder<T>);
        }

        /// <summary>
        /// Gets the HashCode.
        /// </summary>
        /// <returns>The HashCode.</returns>
        public override int GetHashCode()
        {
            return HashCode.Combine(ApiKey);
        }

        /// <summary>
        /// Find out if two objects equals.
        /// </summary>
        /// <param name="left">The object on the left side.</param>
        /// <param name="right">The object on the right side.</param>
        /// <returns>If both objects equals <c>TRUE</c>, otherwise <c>FALSE</c>.</returns>
        public static bool operator ==(ApiKeyHolder<T> left, ApiKeyHolder<T> right)
        {
            return EqualityComparer<ApiKeyHolder<T>>.Default.Equals(left, right);
        }

        /// <summary>
        /// Find out if two objects do not equals.
        /// </summary>
        /// <param name="left">The object on the left side.</param>
        /// <param name="right">The object on the right side.</param>
        /// <returns>If both objects do not equals <c>TRUE</c>, otherwise <c>FALSE</c>.</returns>
        public static bool operator !=(ApiKeyHolder<T> left, ApiKeyHolder<T> right)
        {
            return !(left == right);
        }

        #region implementation of IEquatable<ApiKeyHolder<T>>
        /// <summary>
        /// Find out, if this object equals another given object.
        /// </summary>
        /// <param name="other">The other object.</param>
        /// <returns>If both objects equals <c>TRUE</c>, otherwise <c>FALSE</c>.</returns>
        public bool Equals(ApiKeyHolder<T> other)
        {
            return other != null &&
                   EqualityComparer<T>.Default.Equals(ApiKey, other.ApiKey);
        }
        #endregion
    }
}
