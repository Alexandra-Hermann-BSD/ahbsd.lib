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

namespace ahbsd.lib.Interfaces
{
    /// <summary>
    /// Interface for generic EventArgs for changing values.
    /// </summary>
    /// <typeparam name="T">The type of the changing Values.</typeparam>
    public interface IChangeEventArgs<T>
    {
        /// <summary>
        /// Gets the old value.
        /// </summary>
        /// <value>The old value.</value>
        T OldValue { get; }
        /// <summary>
        /// Gets the new value.
        /// </summary>
        /// <value>The new value.</value>
        T NewValue { get; }
        /// <summary>
        /// Sets the new value.
        /// </summary>
        /// <param name="newValue">The new value.</param>
        /// <exception cref="Exception">If the <see cref="NewValue" /> was already set.</exception>
        void SetNewValue(T newValue);
        /// <summary>
        /// Gets a string representation of the changed value.
        /// </summary>
        /// <returns>A string representation of the changed value.</returns>
        string ToString();
    }
}
