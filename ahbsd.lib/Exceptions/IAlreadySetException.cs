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
namespace ahbsd.lib.Exceptions
{
    /// <summary>
    /// Am interface for a specialized Exception for the case, that
    /// by trying to use <see cref="ChangeEventArgs{T}.SetNewValue(T)"/> the
    /// new value was already set.
    /// </summary>
    /// <typeparam name="T">The type of the <see cref="ChangeEventArgs{T}"/></typeparam>
    public interface IAlreadySetException<T> : IGenericException<T>
    {
        /// <summary>
        /// Returns the given <see cref="ChangeEventArgs{T}"/>.
        /// </summary>
        /// <value>The given <see cref="ChangeEventArgs{T}"/>.</value>
        ChangeEventArgs<T> ChangeEventArgs { get; }

        /// <summary>
        /// Gets a string representating this Exception.
        /// </summary>
        /// <returns>A string representating this Exception</returns>
        string ToString();
    }
}