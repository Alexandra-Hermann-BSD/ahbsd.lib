﻿//
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

using ahbsd.lib;
using ahbsd.lib.Interfaces;
using Xunit;

namespace Test_xUnit
{
    public class TestGenericEventArgs
    {
        [Theory]
        [InlineData("Hallo")]
        [InlineData("Häßlich 25")]
        [InlineData("<>%&")]
        [InlineData("(89)=`´\"")]
        [InlineData("")]
        [InlineData(null)]
        public void GenericStringTest(string testval)
        {
            IEventArgs<string> ea = new EventArgs<string>(testval);
            Assert.Equal(testval, ea.Value);

            Assert.Equal(testval != null ? $"EventArgs<String> Value={testval}" : "EventArgs<String> Value=null", ea.ToString());
        }

        [Theory]
        [InlineData(25.01d)]
        [InlineData(25d)]
        [InlineData(0d)]
        public void GenericTestDouble(double testval)
        {
            IEventArgs<double> ea = new EventArgs<double>(testval);
            Assert.Equal(testval, ea.Value);
            
            Assert.Equal($"EventArgs<Double> Value={testval}", ea.ToString());
        }

        [Fact]
        public void GenericBaseEventArgsString()
        {
            IEventArgs<string> ea = new EventArgs<string>();
            Assert.Null(ea.Value);
            Assert.Equal("EventArgs<String> Value=null", ea.ToString());
        }

        [Fact]
        public void GenericBaseEventArgsInt()
        {
            IEventArgs<int> ea = new EventArgs<int>();
            Assert.Equal(0, ea.Value);
            Assert.Equal("EventArgs<Int32> Value=0", ea.ToString());
        }

        [Fact]
        public void GenericBaseEventArgsNullableInt()
        {
            IEventArgs<int?> ea = new EventArgs<int?>();
            Assert.Null(ea.Value);
            Assert.Equal("EventArgs<Nullable`1> Value=null", ea.ToString());
        }
    }
}
