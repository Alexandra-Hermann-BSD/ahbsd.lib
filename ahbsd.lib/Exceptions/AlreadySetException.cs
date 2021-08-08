﻿//
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
using System.Text;

namespace ahbsd.lib.Exceptions
{
    /// <summary>
    /// A secialized Exception for the case, that a new value was already set.
    /// </summary>
    /// <typeparam name="T">The type of the <see cref="ChangeEventArgs{T}"/></typeparam>
    public class AlreadySetException<T> : Exception<T>
    {
        /// <summary>
        /// Constructor with a given <see cref="ChangeEventArgs{T}"/> and a new value.
        /// </summary>
        /// <param name="changeEventArgs">The given <see cref="ChangeEventArgs{T}"/></param>
        /// <param name="newValue">The new value</param>
        public AlreadySetException(ChangeEventArgs<T> changeEventArgs, T newValue)
            : base($"New value was already set to '{changeEventArgs.NewValue}'.", newValue)
        {
            ChangeEventArgs = changeEventArgs;
        }

        /// <summary>
        /// Returns the given <see cref="ChangeEventArgs{T}"/>.
        /// </summary>
        /// <value>The given <see cref="ChangeEventArgs{T}"/>.</value>
        public ChangeEventArgs<T> ChangeEventArgs { get; private set; }

        public override string ToString()
        {
            StringBuilder builder = new StringBuilder();
            builder.AppendLine($"ChangeEventArgs<{typeof(T)}> with:");
            builder.AppendLine($"OldValue: '{ChangeEventArgs.OldValue}'");
            builder.AppendLine($"NewValue: '{ChangeEventArgs.NewValue}'");
            builder.AppendLine($"Try of adding a NewValue of type{typeof(T)}:");
            builder.AppendLine($"NewValue: '{Value}'");
            return builder.ToString();
        }
    }
}