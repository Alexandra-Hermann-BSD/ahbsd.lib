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
using System.ComponentModel;

namespace ahbsd.lib
{
    /// <summary>
    /// Interface of an model of a product.
    /// </summary>
    public interface IModel : IComponent
    {
        /// <summary>
        /// Happenes, if the notes have changed.
        /// </summary>
        event ChangeEventHandler<string> OnNotesChanged;
        /// <summary>
        /// Gets the producer of the Model.
        /// </summary>
        /// <value>The producer of the Model.</value>
        ICompany Producer { get; }
        /// <summary>
        /// Gets the name of the model.
        /// </summary>
        /// <value>The name of the model.</value>
        string Name { get; }
        /// <summary>
        /// Gets or sets the notes to the model.
        /// </summary>
        /// <value>The notes to the model.</value>
        string Notes { get; set; }
    }
}
