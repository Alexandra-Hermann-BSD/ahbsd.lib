// 
//     ahbsd.lib
//     Test_xUnit
//     TestLoggerComponent.cs
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
using System.ComponentModel;
using System.IO;
using Xunit;
using ahbsd.lib.Components;
using ahbsd.lib.EventArgs;
using ahbsd.lib.Interfaces;
using ahbsd.lib.Tools;

namespace Test_xUnit.Components
{
    public class TestLoggerComponent
    {

        private static readonly ILogger testLogger = new Logger($"{Path.GetTempPath()}Test.log");

        [Fact]
        public void LoggerTest()
        {
            testLogger.Log($"Starting FACT {GetType().Name}.LoggerTest");

            var logger = testLogger;
            Assert.Equal($"{Path.GetTempPath()}Test.log", logger.Logfile);
        
            Assert.Equal("Logger", logger.Name);
            logger.Log($"The name of logger is '{logger.Name}'");

            logger = new LoggerComponent(new Container(), "TestLogger");
            logger.OnLogfileChanged += Logger_OnLogfileChanged;
            logger.Logfile = testLogger.Logfile;
        
            logger.Log($"The Name should be 'TestLogger' and is currently '{logger.Name}'");
        

            var loggerComponent = new LoggerComponent();
            Assert.Equal("LoggerComponent", loggerComponent.Name);
            loggerComponent.Disposed += LoggerComponent_Disposed;
        
            loggerComponent.Dispose();
            testLogger.Log("Finished test");
        }

        private void LoggerComponent_Disposed(object sender, EventArgs e)
        {
            if (sender is IDisposable disposable)
            {
                testLogger.Log($"Sender {sender} disposed: {disposable}");
            }
        }

        private void Logger_OnLogfileChanged(object sender, ChangeEventArgs<string> e)
        {
            var ceaString = e.ToString();
            testLogger.Log($"OnLogfileChanged was send by '{sender}' with change event arguments:\n{ceaString}");
            Assert.NotEqual(e.OldValue, e.NewValue);
        }
    }
}