// //
// //    ahbsd.lib
// //    ahbsd.lib
// //    ApiKeyHolderBase.cs
// //
// //    Copyright 2022 Alexandra Hermann – Beratung, Software, Design
// //
// //    Licensed under the Apache License, Version 2.0 (the "License");
// //    you may not use this file except in compliance with the License.
// //    You may obtain a copy of the License at
// //
// //        http://www.apache.org/licenses/LICENSE-2.0
// //
// //    Unless required by applicable law or agreed to in writing, software
// //    distributed under the License is distributed on an "AS IS" BASIS,
// //    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// //    See the License for the specific language governing permissions and
// //    limitations under the License.
// 

using System;
using System.Collections.Generic;
using System.Linq;

namespace ahbsd.lib.ApiKey;

/// <summary>
/// The abstract base for API Key Holder
/// </summary>
/// <typeparam name="T">The Type of the API Key</typeparam>
public abstract class ApiKeyHolderBase<T> : IEqualityComparer<T>
{
    /// <summary>
    /// An equality comparer.
    /// </summary>
    private readonly IEqualityComparer<T> equalityComparerImplementation;

    /// <summary>
    /// Constructor with a given API-Key.
    /// </summary>
    /// <param name="apiKey">The API-Key.</param>
    protected ApiKeyHolderBase(T apiKey)
    {
        ApiKeyHolder<T>.OnApiKeyAdded += ApiKeyHolder_OnApiKeyAdded;
        ApiKey = apiKey;
        equalityComparerImplementation = new ApiKeyHolder<T>();
        ApiKeyHolder<T>.AddApiKey(this, apiKey);
    }

    /// <summary>
    /// Constructor without parameters.
    /// </summary>
    /// <remarks>If before an object was created, the last API-Key will be used. Otherwise the <c>default of T will be used.</c></remarks>
    /// <exception cref="ArgumentNullException">If <see cref="ApiKeyHolder{T}.KnownApiKeys"/> is <c>null</c> or something similar.</exception>
    /// <exception cref="InvalidOperationException">If anything regarding <see cref="ApiKeyHolder{T}.KnownApiKeys"/> is an invalid operation.</exception>
    protected ApiKeyHolderBase()
    {
        ApiKeyHolder<T>.OnApiKeyAdded += ApiKeyHolder_OnApiKeyAdded;
        ApiKey = ApiKeyHolder<T>.KnownApiKeys.Count > 0 ? ApiKeyHolder<T>.KnownApiKeys.Last() : default;
        ApiKeyHolder<T>.AddApiKey(this, ApiKey);
    }

    /// <summary>
    /// If an <see cref="ApiKey"/> was added to <see cref="ApiKeyHolder{T}"/>
    /// </summary>
    /// <param name="sender">The sending object</param>
    /// <param name="e">The event arguments</param>
    private void ApiKeyHolder_OnApiKeyAdded(object sender, ApiKeyEventArgs<T> e)
    {
        OnApiKeyAdded?.Invoke(sender, e);
    }

    /// <summary>
    /// Gets the API-Key.
    /// </summary>
    /// <value>The API-Key.</value>
    internal T ApiKey { get; }

    /// <inheritdoc/>
    public override int GetHashCode() => EqualityComparer<T>.Default.GetHashCode(ApiKey);

    /// <summary>
    /// Determines whether the given other equals this object.
    /// </summary>
    /// <param name="other">The other object</param>
    /// <returns>Is the other object equal to this?</returns>
    private bool Equals(ApiKeyHolderBase<T> other) 
        => !ReferenceEquals(null, other) 
           && (ReferenceEquals(this, other) 
               || EqualityComparer<T>.Default.Equals(ApiKey, other.ApiKey));

    /// <inheritdoc/>
    public override bool Equals(object obj) 
        => ReferenceEquals(this, obj) 
           || obj is ApiKeyHolder<T> other 
           && Equals(other);

    /// <summary>
    /// Gets a string that describes the current ApiKey.
    /// </summary>
    /// <returns>A string that describes the current ApiKey</returns>
    public override string ToString() => $"{nameof(ApiKey)} ({typeof(T).Name}): {ApiKey}";

    /// <inheritdoc/>
    public bool Equals(T x, T y) => equalityComparerImplementation.Equals(x, y);

    /// <inheritdoc cref="GetHashCode()"/>
    public int GetHashCode(T obj) => equalityComparerImplementation.GetHashCode(obj);

    /// <summary>
    /// Happens if a new API-Key was added to the static list <see cref="ApiKeyHolder{T}.KnownApiKeys"/>.
    /// </summary>
    public event ApiKeyEventHandler<T> OnApiKeyAdded;

    /// <summary>
    /// Looks for a given API-Key.
    /// </summary>
    /// <param name="apiKey">The given API-Key.</param>
    /// <returns>If found it returns the index, if not <c>null</c> is returned.</returns>
    public static int? FindApiKey(T apiKey)
    {
        int? result = null;

        if (ApiKeyHolder<T>.KnownApiKeys.Contains(apiKey))
        {
            result = ApiKeyHolder<T>.KnownApiKeys.IndexOf(apiKey);
        }

        return result;
    }

    /// <summary>
    /// Returns an API-Key from a defined index number.
    /// </summary>
    /// <param name="idx">The defined index number.</param>
    /// <returns>An API-Key.</returns>
    public static T GetApiKey(int idx) => ApiKeyHolder<T>.KnownApiKeys[idx];

}