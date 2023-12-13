// 
//     ahbsd.lib
//     Test_xUnit
//     TestSourceDirectories.cs
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
using System.IO;
using ahbsd.lib.Collections;
using ahbsd.lib.EventArgs;
using ahbsd.lib.Interfaces;
using ahbsd.lib.Tools;
using Xunit;

namespace Test_xUnit.Collections
{
    public class TestSourceDirectories
    {
        private static readonly ILogger testLogger = new Logger($"{Path.GetTempPath()}Test.log");
    
        [Fact]
        public void SourceDirectoryTest()
        {
            testLogger.Log($"Starting Fact {GetType().Name}.SourceDirectoryTest");
            ISourceDirectories directories = new SourceDirectories();
        
            directories.OnNewDirectoryAdded += DirectoriesOnOnNewDirectoryAdded;

            directories.Add("Test");

            IReadOnlyCollection<string> readOnlyCollection = directories.AsReadonly;
        
            Assert.Equal(directories, readOnlyCollection);
            testLogger.Log("Finished test");
        }

        private void DirectoriesOnOnNewDirectoryAdded(object sender, CollectionAddEventArgs<string> e)
        {
            testLogger.Log($"Sender '{sender}': {e}");
            Assert.Equal(1, e.AffectedCollection.Count);
            Assert.Equal("Test", e.Value);
        }
    }
}