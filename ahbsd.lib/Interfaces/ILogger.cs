// 
//     ahbsd.lib
//     ahbsd.lib
//     ILogger.cs
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

using System;
using System.IO;

namespace ahbsd.lib.Interfaces;

/// <summary>
/// Interface for a simple logger.
/// </summary>
public interface ILogger
{

    /// <summary>
    /// If a logger is available, the given message is logged.
    /// </summary>
    /// <param name="message">The given message</param>
    void Log(string message);

    /// <summary>
    /// If a logger is available, the given error event arguments are logged.
    /// </summary>
    /// <param name="e">The given error event arguments</param>
    void Log(ErrorEventArgs e);

    /// <summary>
    /// If a logger is available, the given exception message will be logged.
    /// </summary>
    /// <param name="e">The given exception</param>
    void Log(Exception e);
        
    /// <summary>
    /// Gets the name of this logger.
    /// </summary>
    /// <value>The name of this logger</value>
    string Name { get; }
        
    /// <summary>
    /// Gets or sets the path to the logfile.
    /// </summary>
    string Logfile { get; set; }

    /// <summary>
    /// Happens, when the path of the logfile has changed.
    /// </summary>
    event ChangeEventHandler<string> OnLogfileChanged; 

}
