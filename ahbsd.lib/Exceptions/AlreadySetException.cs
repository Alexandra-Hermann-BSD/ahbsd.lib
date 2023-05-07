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
using System.Runtime.Serialization;
using System.Text;
using ahbsd.lib.EventArgs;

namespace ahbsd.lib.Exceptions
{
    /// <summary>
    /// A specialized Exception for the case, that
    /// by trying to use <see cref="ChangeEventArgs{T}.SetNewValue(T)"/> the
    /// new value was already set.
    /// </summary>
    /// <typeparam name="T">The type of the <see cref="ChangeEventArgs{T}"/></typeparam>
    [Serializable]
    public class AlreadySetException<T> : Exception<T>, IAlreadySetException<T>
    {
        /// <summary>
        /// Constructor with serialized data
        /// </summary>
        /// <param name="info">The serialization info</param>
        /// <param name="context">The streaming context</param>
        protected AlreadySetException(SerializationInfo info, StreamingContext context) : base(info, context)
        {
            // nothing so far
        }
        /// <summary>
        /// Constructor with a given <see cref="ChangeEventArgs{T}"/> and a new value.
        /// </summary>
        /// <param name="changeEventArgs">The given <see cref="ChangeEventArgs{T}"/></param>
        /// <param name="newValue">The new value</param>
        public AlreadySetException(ChangeEventArgs<T> changeEventArgs, T newValue)
            : base($"New value was already set to '{changeEventArgs.NewValue}'.", newValue)
            => ChangeEventArgs = changeEventArgs;

        /// <summary>
        /// Constructor with a given <see cref="ChangeEventArgs{T}"/>, a new value and an already existing Exception..
        /// </summary>
        /// <param name="changeEventArgs">The given <see cref="ChangeEventArgs{T}"/></param>
        /// <param name="newValue">The new value</param>
        /// <param name="innerException">The already existing Exception</param>
        public AlreadySetException(ChangeEventArgs<T> changeEventArgs, T newValue, Exception<T> innerException)
            : base($"New value was already set to '{changeEventArgs.NewValue}'.", newValue, innerException)
            => ChangeEventArgs = changeEventArgs;

        #region implementation of IAlreadySetException<T>
        /// <summary>
        /// Returns the given <see cref="ChangeEventArgs{T}"/>.
        /// </summary>
        /// <value>The given <see cref="ChangeEventArgs{T}"/>.</value>
        public ChangeEventArgs<T> ChangeEventArgs { get; private set; }

        /// <summary>
        /// Gets a string representating this Exception.
        /// </summary>
        /// <returns>A string representating this Exception</returns>
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
        #endregion
    }
}
