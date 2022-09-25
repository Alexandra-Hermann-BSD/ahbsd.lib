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
using System.ComponentModel;
using ahbsd.lib.EventHandler;

namespace ahbsd.lib.Products
{
    /// <summary>
    /// An interface, describing a company / manufacturer.
    /// </summary>
    public interface ICompany : IComponent
    {
        /// <summary>
        /// Happens, if an address was added.
        /// </summary>
        event EventHandler<EventArgs<IAddress>> OnAddressAdded;
        /// <summary>
        /// Happens, if an address was removed.
        /// </summary>
        event EventHandler<EventArgs<IAddress>> OnAddressRemoved;
        /// <summary>
        /// Happens, if the note has changed.
        /// </summary>
        event ChangeEventHandler<string> OnNoteChanged;
        /// <summary>
        /// Gets the company name.
        /// </summary>
        /// <value>The company name.</value>
        string Name { get; }
        /// <summary>
        /// Gets the list of addresses.
        /// </summary>
        /// <value>The list of addresses.</value>
        [ReadOnly(true)]
        IList<IAddress> Addresses { get; }
        /// <summary>
        /// Adds an Address.
        /// </summary>
        /// <param name="address">The address to be added.</param>
        /// <returns>
        /// <c>true</c> if the address was successfully added; otherwise <c>false</c>.
        /// </returns>
        bool AddAddress(IAddress address);
        /// <summary>
        /// Removes an address.
        /// </summary>
        /// <param name="address">The Address to be removed.</param>
        /// <returns>
        /// <c>true</c> if the address was successfully removed; otherwise <c>false</c>.
        /// </returns>
        bool RemoveAddress(IAddress address);
        /// <summary>
        /// Removes all addresses of the given type.
        /// </summary>
        /// <param name="type">The given type of addresses to remove.</param>
        /// <returns>
        /// <c>true</c> if the Addresses of the given type were found and removed,
        /// otherwise <c>false</c>.
        /// </returns>
        bool RemoveAddresses(AddressType type);
        /// <summary>
        /// Gets or sets the notes to the company.
        /// </summary>
        /// <value>The notes to the company.</value>
        string Note { get; set; }
    }
}
