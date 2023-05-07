// 
//     ahbsd.lib
//     ahbsd.lib
//     ChangeEventHandler.cs
// 
//     Copyright 2022 Alexandra Hermann – Beratung, Software, Design
// 
//     Licensed under the Apache License, Version 2.0 (the "License");
//     you may not use this file except in compliance with the License.
//     You may obtain a copy of the License at
// 
//         http://www.apache.org/licenses/LICENSE-2.0
// 
//     Unless required by applicable law or agreed to in writing, software
//     distributed under the License is distributed on an "AS IS" BASIS,
//     WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//     See the License for the specific language governing permissions and
//     limitations under the License.
// 

using ahbsd.lib.EventArgs;

namespace ahbsd.lib.EventHandler
{
    /// <summary>
    /// A delegate for change events.
    /// </summary>
    /// <typeparam name="T">The type of changing values.</typeparam>
    /// <param name="sender">Sending object.</param>
    /// <param name="e">The changing EventArgs.</param>
    public delegate void ChangeEventHandler<T>(object sender, ChangeEventArgs<T> e);
}