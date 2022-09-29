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
using System.Diagnostics;
using System.Reflection;
using ahbsd.lib.Exceptions;
using ahbsd.lib.Interfaces;

namespace ahbsd.lib.EventArgs
{
    /// <summary>
    /// Generic EventArgs for changing values.
    /// </summary>
    /// <typeparam name="T">The type of the changing Values.</typeparam>
    public class ChangeEventArgs<T> : System.EventArgs, IChangeEventArgs<T>
    {
        /// <summary>
        /// Constructor without any parameters.
        /// </summary>
        public ChangeEventArgs()
        {
            OldValue = default;
            NewValue = default;
            Caller = new StackFrame(1);
        }

        /// <summary>
        /// Constructor with the old and the new value.
        /// </summary>
        /// <param name="oldValue">The old value.</param>
        /// <param name="newValue">The new value.</param>
        public ChangeEventArgs(T oldValue, T newValue)
        {
            OldValue = oldValue;
            NewValue = newValue;
            Caller = new StackFrame(1);
        }

        /// <summary>
        /// Constructor with the old value.
        /// </summary>
        /// <param name="oldValue">The old value.</param>
        public ChangeEventArgs(T oldValue)
        {
            OldValue = oldValue;
            NewValue = default;
            Caller = new StackFrame(1);
        }


        #region implementation of ChangeEventArgs<T>
        /// <inheritdoc />
        public T OldValue { get; private set; }
        
        /// <inheritdoc />
        public T NewValue { get; private set; }
        
        /// <inheritdoc />
        public void SetNewValue(T newValue)
        {
            IAlreadySetException<T> e;
            bool isSet = false;

            try
            {
                if (NewValue.Equals(default))
                {
                    NewValue = newValue;
                }
                else
                {
                    isSet = true;
                }
            }
            catch (Exception)
            {
                isSet = false;
            }

            if (isSet)
            {
                e = new AlreadySetException<T>(this, newValue);
                throw (AlreadySetException<T>)e;
            }

            NewValue = newValue;
        }

        /// <inheritdoc cref="IChangeEventArgs{T}.ToString"/>
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

        /// <inheritdoc />
        public StackFrame Caller { get; }
        #endregion

    }
}
