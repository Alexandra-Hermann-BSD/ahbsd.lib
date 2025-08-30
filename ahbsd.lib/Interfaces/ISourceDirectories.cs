// 
//     ahbsd.lib
//     ahbsd.lib
//     ISourceDirectories.cs
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

using System.Collections.Generic;
using ahbsd.lib.EventHandler;

namespace ahbsd.lib.Interfaces;

/// <summary>
/// Interface for source directories.
/// </summary>
public interface ISourceDirectories : ICollection<string>
{
    /// <summary>
    /// Happens, when a new directory was added.
    /// </summary>
    event CollectionAddEventHandler<string> OnNewDirectoryAdded;
        
    /// <summary>
    /// Gets this collection as read only collection.
    /// </summary>
    /// <value>This collection as read only collection</value>
    IReadOnlyCollection<string> AsReadonly { get; }
}