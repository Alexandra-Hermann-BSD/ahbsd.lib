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

namespace ahbsd.lib.Products
{
    /// <summary>
    /// An enum for the type of an Address.
    /// </summary>
    public enum AddressType
    {
        /// <summary>
        /// The postal address.
        /// </summary>
        Postal,
        /// <summary>
        /// The delivery address.
        /// </summary>
        Delivery,
        /// <summary>
        /// The store address.
        /// </summary>
        Store,
        /// <summary>
        /// The private address.
        /// </summary>
        Private,
        /// <summary>
        /// An other address.
        /// </summary>
        /// <remarks>
        /// If no other type matches.
        /// </remarks>
        Other,
    }
}
