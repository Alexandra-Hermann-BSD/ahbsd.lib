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
using ahbsd.lib.Attributes;

namespace ahbsd.lib
{
    /// <summary>
    /// Generic EventArgs.
    /// </summary>
    /// <typeparam name="T">Type of <see cref="Value"/>.</typeparam>
    [Api]
    public class EventArgs<T> : EventArgs, IEventArgs<T>
    {
        /// <summary>
        /// Constructor without parameters.
        /// </summary>
        public EventArgs() => Value = default;

        /// <summary>
        /// Constructor with a value.
        /// </summary>
        /// <param name="val">A value.</param>
        public EventArgs(T val) => Value = val;

        #region implementation of IEventArgs<T>
        /// <inheritdoc/>
        public T Value { get; private set; }
        #endregion
    }
}
