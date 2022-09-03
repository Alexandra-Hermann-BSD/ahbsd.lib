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
using ahbsd.lib.ApiKey;

namespace Test_xUnit
{
    /// <summary>
    /// A class to demonstrate <see cref="ChangeEventArgs{T}"/> and <see cref="ChangeEventHandler{T}"/>.
    /// </summary>
    /// <typeparam name="T">Type of <see cref="Variable"/>.</typeparam>
    /// <typeparam name="TA">Type of API-Key.</typeparam>
    public class TestClass<T, TA> : ApiKeyHolder<TA>, ITestClass<T, TA>
    {
        /// <summary>
        /// The variable to change.
        /// </summary>
        private T _variable;

        /// <summary>
        /// Happenes when <see cref="Variable"/> has changed.
        /// </summary>
        public event ChangeEventHandler<T> OnChange;

        /// <summary>
        /// Gets or sets a variable.
        /// </summary>
        public T Variable
        {
            get => _variable;
            set
            {
                ChangeEventArgs<T> cea;

                if (value != null && !value.Equals(_variable))
                {
                    cea = new ChangeEventArgs<T>(_variable, value);

                    _variable = value;

                    OnChange?.Invoke(this, cea);
                }
                else if (value == null && _variable != null)
                {
                    cea = new ChangeEventArgs<T>(_variable, value);

                    _variable = value;

                    OnChange?.Invoke(this, cea);
                }
            }
        }

        /// <summary>
        /// Constructor without parameters.
        /// </summary>
        public TestClass()
            : base()
        {
            _variable = default;
            OnApiKeyAdded += TestClass_OnApiKeyAdded;
        }

        /// <summary>
        /// Constructor with a given variable.
        /// </summary>
        /// <param name="v">The given variable.</param>
        public TestClass(T v)
            : base()
        {
            _variable = v;
            OnApiKeyAdded += TestClass_OnApiKeyAdded;
        }

        /// <summary>
        /// Constructor with a given API-Key.
        /// </summary>
        /// <param name="apiKey">The given API-Key.</param>
        public TestClass(TA apiKey)
            : base(apiKey)
        {
            _variable = default;
            OnApiKeyAdded += TestClass_OnApiKeyAdded;
        }

        /// <summary>
        /// Constructor with a given value and a given API-Key.
        /// </summary>
        /// <param name="v">The given variable.</param>
        /// <param name="apiKey">The given API-Key.</param>
        public TestClass(T v, TA apiKey)
            : base(apiKey)
        {
            _variable = v;
            OnApiKeyAdded += TestClass_OnApiKeyAdded;
        }


        private void TestClass_OnApiKeyAdded(object sender, ApiKeyEventArgs<TA> e)
        {
            Console.WriteLine("An API-Key ('{0}') was added at Index {1}", e.Value, e.Index);
        }
    }
}
