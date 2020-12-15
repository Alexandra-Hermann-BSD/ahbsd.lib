using System;
namespace ahbsd.lib
{
    /// <summary>
    /// Generic EventArgs.
    /// </summary>
    /// <typeparam name="T">Type of <see cref="Value"/>.</typeparam>
    public class EventArgs<T> : EventArgs, IEventArgs<T>
    {
        /// <summary>
        /// Constructor without parameters.
        /// </summary>
        public EventArgs()
            : base()
        {
            Value = default;
        }

        /// <summary>
        /// Constructor with a value.
        /// </summary>
        /// <param name="val">A value.</param>
        public EventArgs(T val)
            : base()
        {
            Value = val;
        }

        #region implementation of IEventArgs<T>
        /// <summary>
        /// Gets a value.
        /// </summary>
        /// <value>A value.</value>
        public T Value { get; private set; }
        #endregion
    }

    /// <summary>
    /// Interface for generic EventArgs.
    /// </summary>
    /// <typeparam name="T">Type of Value.</typeparam>
    /// <remarks>The difference to usual <see cref="EventArgs"/> is, that a generic value is added.</remarks>
    public interface IEventArgs<T>
    {
        /// <summary>
        /// Gets a value.
        /// </summary>
        /// <value>A value.</value>
        T Value { get; }
    }
}
