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
using System.ComponentModel;

namespace ahbsd.lib
{
    /// <summary>
    /// Interface of an Product.
    /// </summary>
    public interface IProductItem : IComponent
    {
        /// <summary>
        /// Gets the model of the product.
        /// </summary>
        /// <value>The model of the product.</value>
        IModel Model { get; }
        /// <summary>
        /// Gets the name of the product.
        /// </summary>
        /// <value>The name of the product.</value>
        string Name { get; }
        /// <summary>
        /// Gets the serial number.
        /// </summary>
        /// <value>The serial number.</value>
        string SerialNumber { get; }
    }
}
