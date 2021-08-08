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
using ahbsd.lib.Exceptions;

namespace ahbsd.lib
{
    /// <summary>
    /// Generic EventArgs for changing values.
    /// </summary>
    /// <typeparam name="T">The type of the changing Values.</typeparam>
    public class ChangeEventArgs<T> : EventArgs, IChangeEventArgs<T>, IEquatable<IChangeEventArgs<T>>
    {
        /// <summary>
        /// Constructor without any parameters.
        /// </summary>
        public ChangeEventArgs()
            : base()
        {
            OldValue = default;
            NewValue = default;
        }

        /// <summary>
        /// Constructor with the old and the new value.
        /// </summary>
        /// <param name="oldValue">The old value.</param>
        /// <param name="newValue">The new value.</param>
        public ChangeEventArgs(T oldValue, T newValue)
            : base()
        {
            OldValue = oldValue;
            NewValue = newValue;
        }

        /// <summary>
        /// Constructor with the old value.
        /// </summary>
        /// <param name="oldValue">The old value.</param>
        public ChangeEventArgs(T oldValue)
            : base()
        {
            OldValue = oldValue;
            NewValue = default;
        }


        #region implementation of ChangeEventArgs<T>
        /// <summary>
        /// Gets the old value.
        /// </summary>
        /// <value>The old value.</value>
        public T OldValue { get; private set; }
        /// <summary>
        /// Gets the new value.
        /// </summary>
        /// <value>The new value.</value>
        public T NewValue { get; private set; }
        /// <summary>
        /// Sets the new value.
        /// </summary>
        /// <param name="newValue">The new value.</param>
        /// <exception cref="AlreadySetException{T}">If the <see cref="NewValue" /> was already set.</exception>
        public void SetNewValue(T newValue)
        {
            IAlreadySetException<T> e;
            bool isset = false;

            try
            {
                if (NewValue.Equals(default))
                {
                    NewValue = newValue;
                }
                else
                {
                    isset = true;
                }
            }
            catch (Exception)
            {
                isset = false;
            }

            if (isset)
            {
                e = new AlreadySetException<T>(this, newValue);
                throw (AlreadySetException<T>)e;
            }
            else
            {
                NewValue = newValue;
            }
        }

        /// <summary>
        /// Gets a string representation of the changed value.
        /// </summary>
        /// <returns>A string representation of the changed value.</returns>
        public override string ToString()
        {
            string result = string.Empty;
            string fmt = "Changed value:\nOld value: '{2}' (type: {0})\nNew value: '{3}' (type: {1})";

            if (OldValue != null && NewValue != null)
            {
                result = string.Format(fmt, OldValue.GetType(), NewValue.GetType(), OldValue, NewValue);
            }
            else if (OldValue == null && NewValue != null)
            {
                result = string.Format(fmt, "null", NewValue.GetType(), "null", NewValue);
            }
            else if (OldValue != null && NewValue == null)
            {
                result = string.Format(fmt, OldValue.GetType(), "null", OldValue, "null");
            }

            return result;
        }
        #endregion
        #region implementation of IEquatable<IChangeEventArgs<T>>
        /// <summary>
        /// Finds out wheather an other object of type <see cref="IChangeEventArgs{T}"/> equals this object.
        /// </summary>
        /// <param name="other">The other object.</param>
        /// <returns><c>TRUE</c> if the other object equals this object, otherwise <c>FALSE</c>.</returns>
        public bool Equals(IChangeEventArgs<T> other) => other != null &&
                   EqualityComparer<T>.Default.Equals(OldValue, other.OldValue) &&
                   EqualityComparer<T>.Default.Equals(NewValue, other.NewValue);
        #endregion

        /// <summary>
        /// Finds out wheather an other object equals this object.
        /// </summary>
        /// <param name="obj">The other object.</param>
        /// <returns><c>TRUE</c> if the other object equals this object, otherwise <c>FALSE</c>.</returns>
        public override bool Equals(object obj) => Equals(obj as IChangeEventArgs<T>);

        /// <summary>
        /// Gets the HashCode of this object.
        /// </summary>
        /// <returns>The HashCode.</returns>
        public override int GetHashCode() => HashCode.Combine(OldValue, NewValue);

        /// <summary>
        /// Finds out, if two objects of type <see cref="ChangeEventArgs{T}"/> eaquals each other.
        /// </summary>
        /// <param name="left">The object on the left side.</param>
        /// <param name="right">The object on the right side.</param>
        /// <returns><c>TRUE</c> if both objects are eaqual, otherwise <c>FALSE</c>.</returns>
        public static bool operator ==(ChangeEventArgs<T> left, ChangeEventArgs<T> right)
            => EqualityComparer<ChangeEventArgs<T>>.Default.Equals(left, right);

        /// <summary>
        /// Finds out, if two objects of type <see cref="ChangeEventArgs{T}"/> do not eaquals each other.
        /// </summary>
        /// <param name="left">The object on the left side.</param>
        /// <param name="right">The object on the right side.</param>
        /// <returns><c>TRUE</c> if both objects are not eaqual, otherwise <c>FALSE</c>.</returns>
        public static bool operator !=(ChangeEventArgs<T> left, ChangeEventArgs<T> right)
            => !(left == right);
    }

    /// <summary>
    /// A delegate for change events.
    /// </summary>
    /// <typeparam name="T">The type of changing values.</typeparam>
    /// <param name="sender">Sending object.</param>
    /// <param name="e">The changing EventArgs.</param>
    public delegate void ChangeEventHandler<T>(object sender, ChangeEventArgs<T> e);
}
