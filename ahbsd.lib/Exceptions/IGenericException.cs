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
    /// Interface for generic exceptions.
    /// </summary>
    /// <typeparam name="T">Selectable type.</typeparam>
    public interface IGenericException<out T>
    {
        /// <summary>
        /// Gets the value of type T.
        /// </summary>
        /// <value>The value of type T.</value>
        T Value { get; }
    }
}
