using System;
using ahbsd.lib;

namespace Test
{
    /// <summary>
    /// A class to demonstrate <see cref="ChangeEventArgs{T}"/> and <see cref="ChangeEventHandler{T}"/>.
    /// </summary>
    /// <typeparam name="T">Type of <see cref="Variable"/>.</typeparam>
    public class TestClass<T> : ITestClass<T>
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
        {
            _variable = default;
        }

        /// <summary>
        /// Constructor with a given variable.
        /// </summary>
        /// <param name="v">The given variable.</param>
        public TestClass(T v)
        {
            _variable = v;
        }
    }
}
