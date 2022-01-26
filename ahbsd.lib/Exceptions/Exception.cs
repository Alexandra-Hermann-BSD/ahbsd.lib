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

namespace ahbsd.lib.Exceptions
{
    /// <summary>
    /// Class for a generic Exception, which additionally holds a value of T
    /// </summary>
    /// <typeparam name="T">The type.</typeparam>
    [Serializable]
    public class Exception<T> : Exception, IGenericException<T>
    {
        /// <summary>
        /// Constructor without any parameters.
        /// </summary>
        public Exception()
            : base() => Value = default;

        /// <summary>
        /// Constructor with a value.
        /// </summary>
        /// <param name="value">The value.</param>
        public Exception(T value)
            : base()
        {
            Value = value;
        }

        /// <summary>
        /// Constructor with a message.
        /// </summary>
        /// <param name="message">The Message.</param>
        public Exception(string message) : base(message) => Value = default;

        /// <summary>
        /// Constructor with a message and a value.
        /// </summary>
        /// <param name="message">The Message.</param>
        /// <param name="value">The value.</param>
        public Exception(string message, T value)
            : base(message) => Value = value;

        /// <summary>
        /// Constructor with a message and an inner exception.
        /// </summary>
        /// <param name="message">The Message.</param>
        /// <param name="innerException">The inner Exception.</param>
        public Exception(string message, Exception innerException)
            : base(message, innerException) => Value = default;

        /// <summary>
        /// Constructor with serialized data.
        /// </summary>
        /// <param name="info">The serialization info.</param>
        /// <param name="context">The straming content.</param>
        protected Exception(SerializationInfo info, StreamingContext context)
            : base(info, context)
        {
            if (info.ObjectType == typeof(Exception<T>))
            {
                Exception<T> tmpClass = (Exception<T>)context.Context;

                Value = tmpClass != null
                    ? tmpClass.Value
                    : default;
            }
            else if (info.ObjectType.IsAssignableFrom(typeof(IGenericException<T>)))
            {
                IGenericException<T> tmpInterface = (IGenericException<T>)context.Context;

                Value = tmpInterface != default(IGenericException<T>)
                    ? tmpInterface.Value
                    : default;
            }
            else
            {
                Value = default;
            }
        }

        /// <summary>
        /// Constructor with a message, a value and an inner exception.
        /// </summary>
        /// <param name="message">The Message.</param>
        /// <param name="value">The value.</param>
        /// <param name="innerException">The inner Exception.</param>
        public Exception(string message, T value, Exception innerException)
            : base(message, innerException) => Value = value;

        #region implementation of IGenericException<T>
        /// <summary>
        /// Gets the value of type T.
        /// </summary>
        /// <value>The value of type T.</value>
        public T Value { get; private set; }
        #endregion
    }
}
