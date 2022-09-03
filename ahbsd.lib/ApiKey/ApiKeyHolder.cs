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
using ahbsd.lib.Attributes;

// ReSharper disable All

namespace ahbsd.lib.ApiKey
{
    /// <summary>
    /// Class for generic API-Keys.
    /// </summary>
    /// <typeparam name="T">Type of API-Key</typeparam>
    [Api]
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
        internal T ApiKey => _apiKey;

        /// <summary>
        /// A list of all known API-Keys.
        /// </summary>
        /// <remarks>Of current instances. Is eg needed for construction without api-key etc.</remarks>
        internal readonly static List<T> KnownApiKeys;
        /// <summary>
        /// Happens if a new API-Key was added to the static list <see cref="KnownApiKeys"/>.
        /// </summary>
        public static event ApiKeyEventHandler<T> OnApiKeyAdded;

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
            _apiKey = KnownApiKeys.Count > 0 ? KnownApiKeys.Last() : default;
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
        public static T GetApiKey(int idx) => KnownApiKeys[idx];

        /// <inheritdoc/>
        public override int GetHashCode() => EqualityComparer<T>.Default.GetHashCode(_apiKey);

        /// <inheritdoc/>
        public static bool operator ==(ApiKeyHolder<T> left, ApiKeyHolder<T> right) 
            => EqualityComparer<ApiKeyHolder<T>>.Default.Equals(left, right);

        /// <inheritdoc/>
        public static bool operator !=(ApiKeyHolder<T> left, ApiKeyHolder<T> right) 
            => !(left == right);

        #region implementation of IEquatable<ApiKeyHolder<T>>
        /// <inheritdoc/>
        public bool Equals(ApiKeyHolder<T> other) 
            => !ReferenceEquals(null, other) 
               && (ReferenceEquals(this, other) 
                   || EqualityComparer<T>.Default.Equals(_apiKey, other._apiKey));

        /// <inheritdoc/>
        public override bool Equals(object obj) 
            => ReferenceEquals(this, obj) 
               || obj is ApiKeyHolder<T> other 
               && Equals(other);

        #endregion

        /// <summary>
        /// Gets a string that describes the current ApiKey.
        /// </summary>
        /// <returns>A string that describes the current ApiKey</returns>
        public override string ToString() => $"{nameof(ApiKey)} ({typeof(T).Name}): {ApiKey}";
    }
}
