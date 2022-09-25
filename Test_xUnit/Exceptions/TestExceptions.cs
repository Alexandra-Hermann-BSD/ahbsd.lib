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

using System;
using ahbsd.lib.EventArgs;
using ahbsd.lib.Exceptions;
using Xunit;

namespace Test_xUnit.Exceptions
{
    public class TestExceptions
    {
        [Theory]
        [InlineData(25d)]
        [InlineData(25.1)]
        [InlineData(-5)]
        public void GenericDoubleException(double value)
        {
            Exception<double> exD = new Exception<double>($"Value: {value} of type {value.GetType()}", value);

            try
            {
                throw exD;
            }
            catch (Exception ex)
            {
                Assert.IsType<Exception<double>>(ex);
            }
        }

        [Theory]
        [InlineData(null, null, 1)]
        [InlineData(25d, 24, 1)]
        [InlineData(3.14, 3.1415, 3.14158)]
        [InlineData(22, 23, 24)]
        public void AlreadySetDoubleChangeEventArgs(double? oldValue, double? newValue1, double? newValue2)
        {
            ChangeEventArgs<double?> changeEventArgs1 = new ChangeEventArgs<double?>(oldValue);
            ChangeEventArgs<double?> changeEventArgs2 = new ChangeEventArgs<double?>(oldValue, newValue1);

            try
            {
                changeEventArgs1.SetNewValue(newValue2);
                Assert.Equal(newValue2, changeEventArgs1.NewValue);
                changeEventArgs2.SetNewValue(newValue2);
            }
            catch (Exception ex)
            {
                Assert.IsType<AlreadySetException<double?>>(ex);
            }
        }
    }
}
