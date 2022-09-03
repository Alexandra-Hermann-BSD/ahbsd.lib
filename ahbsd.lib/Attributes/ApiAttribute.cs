//
//    Copyright 2022  Alexandra Hermann – Beratung, Software, Design
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

#nullable enable
using System;
using System.Diagnostics;

namespace ahbsd.lib.Attributes
{

    /// <summary>
    /// Attribute that tells, that this belongs to the API.
    /// </summary>
    [AttributeUsage(
        validOn: AttributeTargets.Class
                 | AttributeTargets.Delegate
                 | AttributeTargets.Enum
                 | AttributeTargets.Event
                 | AttributeTargets.Interface
                 | AttributeTargets.Struct
    )]
    public partial class ApiAttribute : Attribute
    {
        /// <summary>
        /// Constructor.
        /// </summary>
        public ApiAttribute()
        {
            CallerName = GetCallerName();
            CallerType = GetCallerType();

            if (CallerType != null && !usingTypes.Contains(CallerType))
            {
                usingTypes.Add(CallerType);
            }
        }
        
        /// <summary>
        /// Gets the name of the object, that used this Attribute.
        /// </summary>
        /// <value>The name of the object, that used this Attribute</value>
        public string CallerName { get; }
        
        /// <summary>
        /// Gets the Type of the object, that used this Attribute.
        /// </summary>
        /// <value>The Type of the object, that used this Attribute</value>
        public Type? CallerType { get; }
        
        #region static functions
        /// <summary>
        /// Gets the caller Frame.
        /// </summary>
        /// <param name="level">The StackFrame index</param>
        /// <returns>The caller Frame</returns>
        private static StackFrame? GetCallerFrame(int level = 2) => new StackTrace().GetFrame(level);
        
        /// <summary>
        /// Gets the caller name.
        /// </summary>
        /// <param name="level">The StackFrame index</param>
        /// <returns>The Caller name</returns>
        internal static string GetCallerName(int level = 2)
        {
            var m = GetCallerFrame(level)?.GetMethod();
            var result = string.Empty;

            if (m != null)
            {
                // .Name is the name only, .FullName includes the namespace
                var className = m.DeclaringType?.FullName;

                //the method/function name you are looking for.
                var methodName = m.Name;

                //returns a composite of the namespace, class and method name.
                result = className != null ? $"{className}->{methodName}" : methodName;
            }

            return result;
        }

        /// <summary>
        /// Gets the calling Type.
        /// </summary>
        /// <param name="level">The StackFrame index</param>
        /// <returns>The calling Type</returns>
        internal static Type? GetCallerType(int level = 2) => GetCallerFrame(level)?.GetMethod()?.DeclaringType;
        #endregion
    }
}