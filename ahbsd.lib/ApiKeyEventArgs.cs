namespace ahbsd.lib
{
    /// <summary>
    /// Specialized generic EventArgs for API-Keys.
    /// </summary>
    /// <typeparam name="T">Type of API-Key.</typeparam>
    /// <seealso cref="ApiKeyHolder{T}"/>
    public class ApiKeyEventArgs<T> : EventArgs<T>, IApiKeyEventArgs
    {
        /// <summary>
        /// Constructor with the API-Key and the index of the API-Key.
        /// </summary>
        /// <param name="apiKey">The API-Key.</param>
        /// <param name="idx">The index of the API-Key.</param>
        public ApiKeyEventArgs(T apiKey, int idx)
            : base(apiKey)
        {
            Index = idx;
        }

        /// <summary>
        /// Constructor with the API-Key.
        /// </summary>
        /// <param name="apiKey">The API-Key.</param>
        public ApiKeyEventArgs(T apiKey)
            : base(apiKey)
        {
            Index = null;
        }

        #region implementation of IApiKeyEventArgs
        /// <summary>
        /// Gets the index of the API-Key. 
        /// </summary>
        /// <value>The index.</value>
        public int? Index { get; private set; }
        #endregion

    }
}
