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
using ahbsd.lib;
using ahbsd.lib.Password;
using Xunit;
namespace Test_xUnit.Password
{
    public class TestPassword
    {
        [Fact]
        public void TestPasswd()
        {
            IPassword p1 = new ahbsd.lib.Password.Password("Unsicher");
            p1.OnChange += P1_OnChange;

            p1.Value = "B<eSs3r üBe9R ©6&/|\\\"";
        }

        private void P1_OnChange(object sender, ChangeEventArgs<IPassword> e)
        {
            Console.WriteLine($"The variable p1 has changed: from '{e.OldValue}' to '{e.NewValue}'.");
        }

        [Theory]
        [InlineData("Unsicher", 10u)]
        [InlineData("B<eSs3r üBe9R ©6&/|\\\"", 50u)]
        [InlineData("Hallo Welt", 20u)]
        [InlineData("Das-Haus-grün-ist", 30u)]
        [InlineData("Garten-Haus-Blume-schön", 48u)]
        public void TestPasswdVars(string passwd, ushort security)
        {
            IPassword password = new ahbsd.lib.Password.Password();
            password.OnChange += Password_OnChange;
            password.Value = passwd;
            Console.WriteLine($"Security: {password.SecurityValue}: Value = {password.SecurityValue.Security} [{password.SecurityValue.Security} >= {security} = {password.SecurityValue.Security >= security}]");
            Assert.True(password.SecurityValue.Security >= security);
        }

        private void Password_OnChange(object sender, ChangeEventArgs<IPassword> e)
        {
            Console.WriteLine($"The password was set to '{e.NewValue}'; Security: {e.NewValue.SecurityValue}");
        }
    }
}
