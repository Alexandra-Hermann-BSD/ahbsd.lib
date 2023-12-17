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

using System.Globalization;
using ahbsd.lib.EventHandler;

namespace ahbsd.lib.Products
{
    /// <summary>
    /// An interface describing an adress in general.
    /// </summary>
    public interface IAddress
    {
        /// <summary>
        /// Happenes, if the <see cref="AddressType"/> has changed.
        /// </summary>
        event ChangeEventHandler<AddressType> OnTypeChanged;
        /// <summary>
        /// Happenes, if the Adress has changed.
        /// </summary>
        event ChangeEventHandler<string> OnAdressChanged;
        /// <summary>
        /// Gets or sets the AddressType.
        /// </summary>
        /// <value>The AddressType.</value>
        AddressType AddressType { get; set; }
        /// <summary>
        /// Gets or sets the Adress.
        /// </summary>
        /// <value>The Adress.</value>
        string Adress { get; set; }
        /// <summary>
        /// Gets the ZIP.
        /// </summary>
        /// <value>The ZIP.</value>
        /// <remarks>Is only settable by the constructor.</remarks>
        string Zip { get; }
        /// <summary>
        /// Gets the City.
        /// </summary>
        /// <value>The City.</value>
        /// <remarks>Is only settable by the constructor.</remarks>
        string City { get; }
        /// <summary>
        /// Gets the Country.
        /// </summary>
        /// <value>The Country.</value>
        /// <remarks>Is only settable by the constructor.</remarks>
        CultureInfo Country { get; }
    }
}
