namespace ahbsd.lib
{
    /// <summary>
    /// Interface for <see cref="ApiKeyEventArgs{T}"/>.
    /// </summary>
    public interface IApiKeyEventArgs
    {
        /// <summary>
        /// Gets the index of the API-Key. 
        /// </summary>
        /// <value>The index.</value>
        int? Index { get; }
    }
}