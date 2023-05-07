// 
//     ahbsd.lib
//     ahbsd.lib
//     Logger.cs
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
using ahbsd.lib.EventArgs;
using ahbsd.lib.EventHandler;
using ahbsd.lib.Extensions;
using ahbsd.lib.Interfaces;

namespace ahbsd.lib.Tools;

/// <summary>
    /// A simple Logger
    /// </summary>
    public class Logger : ILogger, IDisposable
    {

        /// <summary>
        /// Is this object already disposed?
        /// </summary>
        private bool isDisposed;
        
        /// <summary>
        /// The log writer.
        /// </summary>
        private StreamWriter logWriter;

        /// <summary>
        /// The path to the logfile
        /// </summary>
        private string logfilePath;

        /// <summary>
        /// Simple logger constructor.
        /// </summary>
        public Logger()
        {
            isDisposed = true; // we have not yet anything to dispose
            OnLogfileChanged += This_OnLogfileChanged;
            Name = GetType().Name;
        }

        /// <summary>
        /// Constructor with a given logfile path.
        /// </summary>
        /// <param name="logfilePath">The logfile path</param>
        public Logger(string logfilePath) : this()
        {
            Logfile = logfilePath;
        }
        
        /// <summary>
        /// Event handler for the change of the logfile.
        /// </summary>
        /// <param name="sender">The sending object</param>
        /// <param name="e">The change event args for the changed logfile path</param>
        private void This_OnLogfileChanged(object sender, ChangeEventArgs<string> e)
        {
            Exception maybeException = null;
            
            // if we have a previous log, we should dispose it.
            if (!e.OldValue.IsNullOrWhiteSpace() && logWriter != null)
            {
                try
                {
                    Log($"The current Log {Name} is ending and the logfile '{GetFilename(e.OldValue)}' will be closed.");
                    logWriter.Flush();
                    logWriter.Close();
                    logWriter.Dispose();
                    isDisposed = true;
                }
                catch (Exception ex)
                {
                    maybeException = ex;
                }
                finally
                {
                    logWriter = null;
                }
            }
            
            if (!e.NewValue.IsNullOrWhiteSpace())
            {
                logWriter = File.AppendText(e.NewValue);
                logWriter.AutoFlush = true;
                isDisposed = false;
                
                var filename = GetFilename(e.NewValue, out var alreadyExists);

                var newFile = alreadyExists ? "the existing" : "the new";
                
                Log($"A new log started with {newFile} logfile '{filename}' in logger {Name}.");

                if (maybeException != null)
                {
                    Log(maybeException);
                }
            }
        }

        /// <summary>
        /// Gets the file name from a given path.
        /// </summary>
        /// <param name="path">The given path</param>
        /// <param name="alreadyExists">[out] Does this file already exists?</param>
        /// <returns>The file name</returns>
        internal static string GetFilename(string path, out bool alreadyExists)
        {
            var file = new FileInfo(path);
            alreadyExists = file.Exists;
            return file.Name;
        }
        
        /// <summary>
        /// Gets the file name from a given path.
        /// </summary>
        /// <param name="path">The given path</param>
        /// <returns>The file name</returns>
        internal static string GetFilename(string path)
        {
            var file = new FileInfo(path);
            
            return file.Name;
        }
        
        #region implementation of ILogger
        /// <inheritdoc/>
        public string Name { get; }
        
        /// <inheritdoc/>
        public string Logfile
        {
            get => logfilePath;
            set
            {
                ChangeEventArgs<string> changeEventArgs = new ChangeEventArgs<string>(logfilePath, value);

                if (!value.IsNullOrWhiteSpace() && !value.Equals(logfilePath))
                {
                    logfilePath = value;
                    OnLogfileChanged?.Invoke(this, changeEventArgs);
                }
                else if (value == null && logfilePath != null)
                {
                    logfilePath = null;
                    OnLogfileChanged?.Invoke(this, changeEventArgs);
                }
            }
        }
        
        /// <inheritdoc/>
        public event ChangeEventHandler<string> OnLogfileChanged;

        /// <inheritdoc/>
        public void Log(string message) => logWriter?.WriteLine($"{DateTime.Now.ToUniversalTime()} – {message}");

        /// <inheritdoc/>
        public void Log(ErrorEventArgs e) => Log(e.GetException());

        /// <inheritdoc/>
        public void Log(Exception e) 
            => logWriter?.WriteLine($"{DateTime.Now.ToUniversalTime()} – a {e.GetType().Name} happened: {e.Message}");
        
        #endregion

        #region implementation of IDisposable
        /// <summary>
        /// Releases the logfile path
        /// </summary>
        private void ReleaseUnmanagedResources()
        {
            logfilePath = null;
        }

        /// <summary>
        /// Disposes the log writer.
        /// </summary>
        /// <param name="disposing">Do dispose managed objects?</param>
        protected virtual void Dispose(bool disposing)
        {
            if (disposing && !isDisposed)
            {
                Log("Disposing log.");
                Logfile = null;
                logWriter?.Dispose();
                isDisposed = true;
            }
            
            ReleaseUnmanagedResources();
        }

        /// <inheritdoc />
        public void Dispose()
        {
            Dispose(true);
            GC.SuppressFinalize(this);
        }

        /// <inheritdoc />
        ~Logger()
        {
            Dispose(false);
        }
        #endregion
    }