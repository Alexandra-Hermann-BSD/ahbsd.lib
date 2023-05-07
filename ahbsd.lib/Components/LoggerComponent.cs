// 
//     ahbsd.lib
//     ahbsd.lib
//     LoggerComponent.cs
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
using System.Collections.Generic;
using System.ComponentModel;
using System.IO;
using ahbsd.lib.EventArgs;
using ahbsd.lib.EventHandler;
using ahbsd.lib.Extensions;
using ahbsd.lib.Interfaces;
using ahbsd.lib.Tools;

namespace ahbsd.lib.Components;

/// <summary>
/// A logger as component.
/// </summary>
public class LoggerComponent : Component, ILogger
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
    /// The inner collection of components.
    /// </summary>
    private readonly ICollection<IComponent> components;

    /// <summary>
    /// The inner list of disposable objects.
    /// </summary>
    private readonly ICollection<IDisposable> disposables;

    /// <summary>
    /// Simple logger constructor.
    /// </summary>
    public LoggerComponent()
    {
        isDisposed = true; // we have not yet anything to dispose
        components = new List<IComponent>();
        disposables = new List<IDisposable>();
        
        OnLogfileChanged += This_OnLogfileChanged;

        Name = GetType().Name;
        
        Initialize();
    }

    /// <summary>
    /// Constructor with a given container and optional a name.
    /// </summary>
    /// <param name="container">The container</param>
    /// <param name="name">[optional] The name</param>
    public LoggerComponent(IContainer container, string name = null)
    {
        isDisposed = true; // we have not yet anything to dispose
        components = new List<IComponent>();
        disposables = new List<IDisposable>();
        
        OnLogfileChanged += This_OnLogfileChanged;

        Name = name ?? GetType().Name;
        
        Initialize(container);
    }

    /// <summary>
    /// Constructor with a given logfile path.
    /// </summary>
    /// <param name="logfilePath">The logfile path</param>
    public LoggerComponent(string logfilePath) : this()
    {
        Logfile = logfilePath;
    }
    
    /// <summary>
    /// Initializes the object
    /// </summary>
    /// <param name="container">[optional] A container</param>
    private void Initialize(IContainer container = null)
    {
        if (container != null)
        {
            container.Add(this, Name);
        }
        else
        {
            Site?.Container?.Add(this, Name);
        }
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
                Log($"The current Log {Name} is ending and the logfile '{Logger.GetFilename(e.OldValue)}' will be closed.");

                if (disposables.Contains(logWriter))
                {
                    disposables.Remove(logWriter);
                }
                logWriter.Flush();
                logWriter.Close();
                logWriter.Dispose();
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
            disposables.Add(logWriter);
            logWriter.AutoFlush = true;
            isDisposed = false;

            var filename = Logger.GetFilename(e.NewValue, out var alreadyExists);

            var newFile = alreadyExists ? "the existing" : "the new";
            
            Log($"A new log started with {newFile} logfile '{filename}' in logger {Name}.");

            if (maybeException != null)
            {
                Log(maybeException);
            }
        }
    }

    /// <summary>
    /// Gets a readonly collection of used components.
    /// </summary>
    /// <value>A readonly collection of used components</value>
    public IReadOnlyCollection<IComponent> Components => (IReadOnlyCollection<IComponent>) components;

    #region implementation of ILogger
    
    /// <inheritdoc/>
    [ReadOnly(true)]
    public string Name { get; }

    /// <inheritdoc/>
    public string Logfile
    {
        get => logfilePath;
        set
        {
            ChangeEventArgs<string> changeEventArgs = new(logfilePath, value);

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

    /// <inheritdoc/>
    protected override void Dispose(bool disposing)
    {
        if (disposing && !isDisposed)
        {
            foreach (var disposable in disposables)
            {
                if (disposable is IComponent component)
                {
                    components.Remove(component);
                    Log($"Component '{component}' was removed from Components.");
                }
                
                Log($"Item '{disposable}' will be disposed");
                disposable.Dispose();
            }
            
            disposables.Clear();
            components.Clear();
            
            Logfile = null;
            isDisposed = true;
        }
        
        base.Dispose(disposing);
        
        ReleaseUnmanagedResources();
    }

    /// <inheritdoc />
    ~LoggerComponent()
    {
        Dispose(false);
    }
    #endregion
}