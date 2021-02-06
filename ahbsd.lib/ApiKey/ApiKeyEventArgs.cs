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
namespace ahbsd.lib.ApiKey
{
    /// <summary>
    /// Specialized generic EventArgs for API-Keys.
    /// </summary>
    /// <typeparam name="T">Type of API-Key.</typeparam>
    /// <seealso cref="ApiKeyHolder{T}"/>
    public class ApiKeyEventArgs<T> : EventArgs<T>, IApiKeyEventArgs
    {
        /// <summary>
        /// Constructor with the API-Key and the index of the API-Key.
        /// </summary>
        /// <param name="apiKey">The API-Key.</param>
        /// <param name="idx">The index of the API-Key.</param>
        public ApiKeyEventArgs(T apiKey, int idx)
            : base(apiKey)
        {
            Index = idx;
        }

        /// <summary>
        /// Constructor with the API-Key.
        /// </summary>
        /// <param name="apiKey">The API-Key.</param>
        public ApiKeyEventArgs(T apiKey)
            : base(apiKey)
        {
            Index = null;
        }

        #region implementation of IApiKeyEventArgs
        /// <summary>
        /// Gets the index of the API-Key. 
        /// </summary>
        /// <value>The index.</value>
        public int? Index { get; private set; }
        #endregion

    }
}
