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

using ahbsd.lib.EventArgs;
using ahbsd.lib.EventHandler;

namespace Test_xUnit
{
    /// <summary>
    /// An interface for a class to demonstrate <see cref="ChangeEventArgs{T}"/>
    /// and <see cref="ChangeEventHandler{T}"/>.
    /// </summary>
    /// <typeparam name="T">Type of <see cref="Variable"/>.</typeparam>
    public interface ITestClass<T>
    {
        /// <summary>
        /// Gets or sets a variable.
        /// </summary>
        T Variable { get; set; }

        /// <summary>
        /// Happens when <see cref="Variable"/> has changed.
        /// </summary>
        event ChangeEventHandler<T> OnChange;
    }
}
