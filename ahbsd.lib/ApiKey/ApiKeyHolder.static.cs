// //
// //    ahbsd.lib
// //    ahbsd.lib
// //    ApiKeyHolder.static.cs
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

using System.Collections.Generic;

namespace ahbsd.lib.ApiKey;

public partial class ApiKeyHolder<T> : ApiKeyHolderBase<T>
{
    /// <summary>
    /// A list of all known API-Keys.
    /// </summary>
    /// <remarks>Of current instances. Is eg needed for construction without api-key etc.</remarks>
    internal static readonly List<T> KnownApiKeys = new();

    /// <summary>
    /// Happens if a new API-Key was added to the static list <see cref="KnownApiKeys"/>.
    /// </summary>
    public new static event ApiKeyEventHandler<T> OnApiKeyAdded;

    /// <summary>
    /// Functionality when a new API-Key was added.
    /// </summary>
    /// <param name="sender">Sending Object</param>
    /// <param name="apiKey">New API-Key</param>
    protected internal static void AddApiKey(object sender, T apiKey)
    {
        if (!KnownApiKeys.Contains(apiKey))
        {
            KnownApiKeys.Add(apiKey);
            var idx = KnownApiKeys.IndexOf(apiKey);
            var e = new ApiKeyEventArgs<T>(apiKey, idx);
            OnApiKeyAdded?.Invoke(sender, e);
        }
    }
}