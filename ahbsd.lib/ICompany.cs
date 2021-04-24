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

namespace ahbsd.lib
{
    /// <summary>
    /// An interface, describing a company / manufacturer.
    /// </summary>
    public interface ICompany : IComponent
    {
        /// <summary>
        /// Happenes, if an adress was added.
        /// </summary>
        event EventHandler<EventArgs<IAdress>> OnAdressAdded;
        /// <summary>
        /// Happenes, if an adress was removed.
        /// </summary>
        event EventHandler<EventArgs<IAdress>> OnAdressRemoved;
        /// <summary>
        /// Happenes, if the note has changed.
        /// </summary>
        event ChangeEventHandler<string> OnNoteChanged;
        /// <summary>
        /// Gets the company name.
        /// </summary>
        /// <value>The company name.</value>
        string Name { get; }
        /// <summary>
        /// Gets the list of adresses.
        /// </summary>
        /// <value>The list of adresses.</value>
        [ReadOnly(true)]
        IList<IAdress> Adresses { get; }
        /// <summary>
        /// Adds an Adress.
        /// </summary>
        /// <param name="adress">The adress to be added.</param>
        /// <returns>
        /// <c>true</c> if the adress was sucessfully added; otherwise <c>false</c>.
        /// </returns>
        bool AddAdress(IAdress adress);
        /// <summary>
        /// Removes an adress.
        /// </summary>
        /// <param name="adress">The Adress to be removed.</param>
        /// <returns>
        /// <c>true</c> if the adress was successfully removed; otherwise <c>false</c>.
        /// </returns>
        bool RemoveAdress(IAdress adress);
        /// <summary>
        /// Removes all adresses of the given type.
        /// </summary>
        /// <param name="type">The given type of adresses to remove.</param>
        /// <returns>
        /// <c>true</c> if the Adresses of the given type were found and removed,
        /// otherwise <c>false</c>.
        /// </returns>
        bool RemoveAdresses(AdressType type);
        /// <summary>
        /// Gets or sets the notes to the company.
        /// </summary>
        /// <value>The notes to the company.</value>
        string Note { get; set; }
    }
}
