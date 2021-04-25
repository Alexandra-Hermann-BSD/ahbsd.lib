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
using System.Collections;
using System.Collections.Generic;
using System.ComponentModel;
using System.Diagnostics.CodeAnalysis;
using System.Linq;
using ahbsd.lib.Products;

namespace ahbsd.lib.NamedCollections
{
    /// <summary>
    /// Class for a combination of difined products of a company.
    /// </summary>
    public class CompanyModelProducts : Container, IDictionary<ICompany, IDictionaryOfNamedList<IModel, IProductItem>>
    {
        /// <summary>
        /// A Dictionary holding companies and their model products.
        /// </summary>
        private IDictionary<ICompany, IDictionaryOfNamedList<IModel, IProductItem>> dict;

        /// <summary>
        /// Constructor without any parameters.
        /// </summary>
        public CompanyModelProducts()
            : base()
        {
            dict = new Dictionary<ICompany, IDictionaryOfNamedList<IModel, IProductItem>>();
        }

        /// <summary>
        /// Gets or sets a Dictionary of <see cref="IDictionaryOfNamedList{IModel, IProductItem}"/> for a given <see cref="ICompany"/>.
        /// </summary>
        /// <param name="key">The given <see cref="ICompany"/>.</param>
        /// <returns>The Dictionary for the given Company.</returns>
        public IDictionaryOfNamedList<IModel, IProductItem> this[ICompany key] { get => dict[key]; set => dict[key] = value; }

        /// <summary>
        /// Gets the Company Keys.
        /// </summary>
        /// <value>The Company Keys.</value>
        public ICollection<ICompany> Keys => dict.Keys;

        /// <summary>
        /// Gets the Values.
        /// </summary>
        /// <value>The Values.</value>
        public ICollection<IDictionaryOfNamedList<IModel, IProductItem>> Values => dict.Values;

        /// <summary>
        /// Gets the amaunt of Companies.
        /// </summary>
        /// <value>The amaunt of Companies.</value>
        public int Count => dict.Count;

        /// <summary>
        /// Gets the information, if this Dictionary is readonly.
        /// </summary>
        /// <value><c>true</c>, if readonly, otherwise <c>false</c>.</value>
        public bool IsReadOnly => dict.IsReadOnly;

        /// <summary>
        /// Adds a given <see cref="ICompany"/> key and its <see cref="IDictionaryOfNamedList{IModel, IProductItem}"/> value.
        /// </summary>
        /// <param name="key">The Company key.</param>
        /// <param name="value">The Dictionary of Model and ProductItem.</param>
        public void Add(ICompany key, IDictionaryOfNamedList<IModel, IProductItem> value)
        {
            base.Add(key, key.Name);
            value.OnNamedListAdded += Tmp_OnNamedListAdded;

            foreach (var item in value)
            {
                base.Add(item.Key, item.Key.Name);

                foreach (var product in item.Value)
                {
                    base.Add(product, product.Name);
                }
            }
            dict.Add(key, value);
        }

        /// <summary>
        /// Adds a Company key.
        /// </summary>
        /// <param name="company">The Company.</param>
        public void Add(ICompany company)
        {
            base.Add(company, company.Name);

            IDictionaryOfNamedList<IModel, IProductItem> tmp
                = new DictionaryOfNamedList<IModel, IProductItem>();

            tmp.OnNamedListAdded += Tmp_OnNamedListAdded;

            dict.Add(company, tmp);
        }

        /// <summary>
        /// Happenes, if a Named List is added to a defined company.
        /// </summary>
        /// <param name="sender">The sending object.</param>
        /// <param name="e">The EventArgs for a named list.</param>
        private void Tmp_OnNamedListAdded(object sender, EventArgs<INamedList<IProductItem>> e)
        {
            foreach (IProductItem item in e.Value)
            {
                base.Add(item, item.Name);
            }
        }

        /// <summary>
        /// Adds a defined KeyValuePair.
        /// </summary>
        /// <param name="item">The defined KeyValuePair.</param>
        public void Add(KeyValuePair<ICompany, IDictionaryOfNamedList<IModel, IProductItem>> item)
        {
            dict.Add(item);
        }

        /// <summary>
        /// Clears this Dictionary.
        /// </summary>
        public void Clear()
        {
            dict.Clear();
        }

        /// <summary>
        /// Checks wheather a given KeyValuePair is contained or not.
        /// </summary>
        /// <param name="item">The given KeyValuePair.</param>
        /// <returns><c>true</c>, if contained, otherwise <c>false</c>.</returns>
        public bool Contains(KeyValuePair<ICompany, IDictionaryOfNamedList<IModel, IProductItem>> item)
        {
            return dict.Contains(item);
        }

        /// <summary>
        /// Checks wheather a given <see cref="ICompany"/>-KEY exists or not.
        /// </summary>
        /// <param name="key">The <see cref="ICompany"/>-KEY to search for.</param>
        /// <returns>
        /// <c>true</c> if the <see cref="ICompany"/>-KEY exists, otherwise <c>false</c>
        /// </returns>
        public bool ContainsKey(ICompany key)
        {
            return dict.ContainsKey(key);
        }

        /// <summary>
        /// Copies the elements of this <see cref="IDictionary{ICompany, IDictionaryOfNamedList{IModel, IProductItem}}"/>
        /// to an <see cref="Array"/>, starting at an particular <see cref="Array"/> index.
        /// </summary>
        /// <param name="array">The given <see cref="Array"/> to copy to.</param>
        /// <param name="arrayIndex">The particular <see cref="Array"/> index to start.</param>
        /// <exception cref="ArgumentNullException">If the <see cref="Array"/> is <c>null</c>.</exception>
        /// <exception cref="ArgumentOutOfRangeException">If the given index is out of range of the array.</exception>
        /// <exception cref="ArgumentException">If anything with the given arguments is wrong.</exception>
        public void CopyTo(KeyValuePair<ICompany, IDictionaryOfNamedList<IModel, IProductItem>>[] array, int arrayIndex)
        {
            dict.CopyTo(array, arrayIndex);
        }

        /// <summary>
        /// Returns an enumerator, that iterates through this collection. 
        /// </summary>
        /// <returns>An enumerator that can be used to iterate through this collection.</returns>
        public IEnumerator<KeyValuePair<ICompany, IDictionaryOfNamedList<IModel, IProductItem>>> GetEnumerator()
        {
            return dict.GetEnumerator();
        }

        /// <summary>
        /// Removes the given KEY and its value.
        /// </summary>
        /// <param name="key">The given KEY to remove.</param>
        /// <returns>
        /// <c>true</c> if the given KEY was found and removed, otherwise <c>false</c>.
        /// </returns>
        public bool Remove(ICompany key)
        {
            return dict.Remove(key);
        }

        /// <summary>
        /// Removes the given <see cref="KeyValuePair{ICompany, IDictionaryOfNamedList{IModel, IProductItem}}"/>.
        /// </summary>
        /// <param name="item">The given KeyValuePair to remove.</param>
        /// <returns>
        /// <c>true</c> if the given KeyValuePair was found and removed, otherwise <c>false</c>.
        /// </returns>
        public bool Remove(KeyValuePair<ICompany, IDictionaryOfNamedList<IModel, IProductItem>> item)
        {
            return dict.Remove(item);
        }

        /// <summary>
        /// Gets the Value associated with the given Key.
        /// </summary>
        /// <param name="key">The given Key.</param>
        /// <param name="value">The Value associated with the given Key.</param>
        /// <returns>
        /// <c>true</c> if the Key was found, otherwise <c>false</c>.
        /// </returns>
        /// <exception cref="ArgumentNullException">If any of the Arguments is <c>null</c>.</exception>
        public bool TryGetValue(ICompany key, [MaybeNullWhen(false)] out IDictionaryOfNamedList<IModel, IProductItem> value)
        {
            return dict.TryGetValue(key, out value);
        }

        /// <summary>
        /// Returns an enumerator, that iterates through this collection. 
        /// </summary>
        /// <returns>An <see cref="IEnumerator"/> that can be used to iterate through this collection.</returns>
        IEnumerator IEnumerable.GetEnumerator()
        {
            return ((IEnumerable)dict).GetEnumerator();
        }
    }
}
