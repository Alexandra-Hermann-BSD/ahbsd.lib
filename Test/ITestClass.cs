﻿using ahbsd.lib;

namespace Test
{
    /// <summary>
    /// An interface for a class to demonstrate <see cref="ChangeEventArgs{T}"/> and <see cref="ChangeEventHandler{T}"/>.
    /// </summary>
    /// <typeparam name="T">Type of <see cref="Variable"/>.</typeparam>
    public interface ITestClass<T>
    {
        /// <summary>
        /// Gets or sets a variable.
        /// </summary>
        T Variable { get; set; }

        /// <summary>
        /// Happenes when <see cref="Variable"/> has changed.
        /// </summary>
        event ChangeEventHandler<T> OnChange;
    }
}