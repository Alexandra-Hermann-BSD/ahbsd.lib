using System;
using System.ComponentModel;
using ahbsd.lib.EventHandler;

namespace ahbsd.lib.Interfaces
{
    /// <summary>
    /// Interface for an attribute util.
    /// </summary>
    /// <typeparam name="T">A specific <see cref="Attribute"/> type</typeparam>
    public interface IAttributeUtil<out T> : IComponent where T : Attribute
    {
        /// <summary>
        /// Gets or sets the name of this component.
        /// </summary>
        /// <value>The name of this component</value>
        string Name { get; set; }

        /// <summary>
        /// Gets the current Attribute.
        /// </summary>
        /// <value>The current Attribute</value>
        T Attribute { get; }
        
        /// <summary>
        /// Gets the container.
        /// </summary>
        /// <value>The container, if available.</value>
        /// <remarks>Can be <c>null</c></remarks>
        IContainer Container { get; }

        /// <summary>
        /// Happens, if the <see cref="Name"/> has changed;
        /// </summary>
        event ChangeEventHandler<string> OnNameChanged;
    }
}