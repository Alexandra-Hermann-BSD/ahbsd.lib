// 
//     ahbsd.lib
//     ahbsd.lib
//     AttributeUtil.cs
// 
//     Copyright 2023 Alexandra Hermann – Beratung, Software, Design
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
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Reflection;
using ahbsd.lib.EventArgs;
using ahbsd.lib.EventHandler;
using ahbsd.lib.Interfaces;

namespace ahbsd.lib.Attributes
{
    /// <summary>
    /// Utilities for Attributes
    /// </summary>
    public class AttributeUtil<T> : IAttributeUtil<T> where T: Attribute
    {
        /// <summary>
        /// The owning container.
        /// </summary>
        private IContainer container;
        /// <summary>
        /// The came of this component.
        /// </summary>
        private string name;

        /// <summary>
        /// Parameterless constructor.
        /// </summary>
        protected AttributeUtil()
        {
            container = null;
            Initialize();
        }

        /// <summary>
        /// Constructor with a given container.
        /// </summary>
        /// <param name="container">The given container</param>
        protected AttributeUtil(IContainer container)
        {
            this.container = container;
            Initialize();
        }

        /// <summary>
        /// Constructor with a given attribute.
        /// </summary>
        /// <param name="attribute">The given attribute</param>
        protected internal AttributeUtil(T attribute) : this()
        {
            Attribute = attribute;
        }

        /// <summary>
        /// Constructor with a given attribute and a given container.
        /// </summary>
        /// <param name="attribute">The given attribute</param>
        /// <param name="container">The given container</param>
        protected internal AttributeUtil(T attribute, IContainer container) : this(container)
        {
            Attribute = attribute;
        }

        public AttributeUtil(IContainer container, string name) : this(container)
        {
            Name = name; 
        }

        /// <summary>
        /// Initializes this object.
        /// </summary>
        protected void Initialize()
        {
            name = GetType().Name;
            container?.Add(this, Name);
            OnNameChanged += AttributeUtil_OnNameChanged;
            OnContainerChanged += AttributeUtil_OnContainerChanged;
        }
        
        /// <summary>
        /// Haüüens, when the <see cref="Container"/> has changed.
        /// </summary>
        /// <param name="sender">Sending object</param>
        /// <param name="e">Event arguments</param>
        private void AttributeUtil_OnContainerChanged(object sender, ChangeEventArgs<IContainer> e)
        { 
            e.OldValue?.Remove(this);
            e.NewValue?.Add(this, this.Name);
        }
            
        /// <summary>
        /// Happens, when the <see cref="Name"/> has changed.
        /// </summary>
        /// <param name="sender">Sending object</param>
        /// <param name="e">Event arguments</param>
        private void AttributeUtil_OnNameChanged(object sender, ChangeEventArgs<string> e)
        {
            if (Container != null)
            {
                Container.Remove(this);
                Container.Add(this, e.NewValue);
            }
        }

        /// <summary>
        /// Disposes this object.
        /// </summary>
        /// <param name="disposing">Is there already disposing happening?</param>
        protected virtual void Dispose(bool disposing)
        {
            if (disposing)
            {
                // nothing for now
            }
        }

        /// <summary>
        /// Happens if the <see cref="Container"/> has changed.
        /// </summary>
        protected event ChangeEventHandler<IContainer> OnContainerChanged; 

        #region implementation of IAttributeUtil<T>

        /// <inheritdoc />
        public event ChangeEventHandler<string> OnNameChanged; 
        
        /// <inheritdoc />
        public void Dispose()
        {
            Dispose(true);
            GC.SuppressFinalize(this);
        }

        /// <inheritdoc />
        public ISite Site { get; set; }

        /// <inheritdoc />
        public event System.EventHandler Disposed;
        
        /// <inheritdoc />
        public T Attribute { get; protected set; }

        /// <inheritdoc />
        public string Name
        {
            get => name;
            set
            {
                if (value != name)
                {
                    ChangeEventArgs<string> changeEventArgs = new ChangeEventArgs<string>(name, value);
                    name = value;
                    OnNameChanged?.Invoke(this, changeEventArgs);
                }
            }
        }

        public IContainer Container
        {
            get => container;
            protected set
            {
                if (value != container)
                {
                    ChangeEventArgs<IContainer> changeEventArgs = new ChangeEventArgs<IContainer>(container, value);
                    container = value;
                    OnContainerChanged?.Invoke(this, changeEventArgs);
                }
            }
        }
        #endregion

        public static IList<T> GetAttributes(object obj, out IList<AttributeUtil<T>> utils)
        {
            IList<T> result = null;
            utils = null;

            if (obj != null)
            {
                IEnumerable<Attribute> attributes = obj.GetType().GetCustomAttributes();
                result = attributes.OfType<T>().ToList();

                utils = new List<AttributeUtil<T>>(result.Count);
                    
                foreach (var attribute in result)
                {
                    utils.Add(new AttributeUtil<T>(attribute));
                }
            }

            return result;
        }
        
        /// <summary>
        /// Static function to get the <see cref="System.Attribute"/> and an <see cref="AttributeUtil{T}"/> of the given object.
        /// </summary>
        /// <param name="obj">The given object</param>
        /// <param name="util">[out] An <see cref="AttributeUtil{T}"/> for the given object</param>
        /// <typeparam name="T">The type of the <see cref="Attribute"/></typeparam>
        /// <returns>The <see cref="Attribute"/> of the given type</returns>
        public static T GetAttribute(object obj, out AttributeUtil<T> util)
        {
            T result = default;
            util = default;
            
            if (obj != null)
            {
                IList<T> tmpList = GetAttributes(obj, out IList<AttributeUtil<T>> utils);

                result = tmpList?.FirstOrDefault();
                util = utils?.FirstOrDefault();
            }
            

            return result;
        }
    }
}