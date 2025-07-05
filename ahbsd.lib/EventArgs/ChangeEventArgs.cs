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
using System.Diagnostics;
using System.Text;
using ahbsd.lib.Exceptions;
using ahbsd.lib.Extensions;
using ahbsd.lib.Interfaces;
using JetBrains.Annotations;

namespace ahbsd.lib.EventArgs;

/// <summary>
/// Generic EventArgs for changing values.
/// </summary>
/// <typeparam name="T">The type of the changing Values.</typeparam>
[PublicAPI]
public class ChangeEventArgs<T> : System.EventArgs, IChangeEventArgs<T?>
{
    /// <summary>
    /// Constructor without any parameters.
    /// </summary>
    public ChangeEventArgs()
    {
        OldValue = default;
        NewValue = default;
        Caller = new StackFrame(1);
    }

    /// <summary>
    /// Constructor with the old and the new value.
    /// </summary>
    /// <param name="oldValue">The old value.</param>
    /// <param name="newValue">The new value.</param>
    public ChangeEventArgs(T? oldValue, T? newValue)
    {
        OldValue = oldValue;
        NewValue = newValue;
        Caller = new StackFrame(1);
    }

    /// <summary>
    /// Constructor with the old value.
    /// </summary>
    /// <param name="oldValue">The old value.</param>
    public ChangeEventArgs(T? oldValue)
    {
        OldValue = oldValue;
        NewValue = default;
        Caller = new StackFrame(1);
    }


    #region implementation of ChangeEventArgs<T>
    /// <inheritdoc />
    public T? OldValue { get; }

    /// <inheritdoc />
    public T? NewValue { get; private set; }

    /// <inheritdoc />
    public void SetNewValue(T? newValue)
    {
        var isSet = false;

        try
        {
            if (NewValue is null)
            {
                NewValue = newValue;
            }
            else
            {
                isSet = true;
            }
        }
        catch (Exception)
        {
            isSet = false;
        }

        if (isSet)
        {
            IAlreadySetException<T?> e = new AlreadySetException<T?>(this!, newValue);
            throw (AlreadySetException<T?>)e;
        }

        NewValue = newValue;
    }

    /// <inheritdoc cref="IChangeEventArgs{T}.ToString"/>
    public override string ToString()
    {
        var resultBuilder = new StringBuilder();

        resultBuilder.AppendLine("Changed value:");
        resultBuilder.AppendLine($" {GetValueAsString(nameof(OldValue), OldValue)}");
        resultBuilder.Append($" {GetValueAsString(nameof(NewValue), NewValue)}");

        return resultBuilder.ToString();
    }

    /// <inheritdoc />
    public bool AreDifferent => CompareNewAndOld() != 0;

    /// <inheritdoc />
    public StackFrame Caller { get; }
    #endregion

    /// <summary>
    /// Compares the <see cref="NewValue"/> and the <see cref="OldValue"/>.
    /// </summary>
    /// <returns>If the new and old value are equal: 0</returns>
    [PublicAPI]
    protected internal int CompareNewAndOld()
    {
        int result;

        if (OldValue is not null)
        {
            result = OldValue.Equals(NewValue) ? 0 : OldValue.GetHashCode().CompareTo(NewValue?.GetHashCode());
        }
        else if (NewValue is IComparable<T> comparable)
        {
            result = comparable.CompareTo(OldValue);
        }
        else if (OldValue is null && NewValue is null)
        {
            result = 0;
        }
        else
        {
            result = NewValue?.GetHashCode().CompareTo(null) ?? 1;
        }

        return result;
    }

    /// <summary>
    /// Gets the given value by its name and value as <see cref="string"/>.
    /// </summary>
    /// <param name="valueName">The name of the value</param>
    /// <param name="value">The value</param>
    /// <typeparam name="TV">The current type</typeparam>
    /// <returns>The given value by its name and value as <see cref="string"/></returns>
    public static string? GetValueAsString<TV>(string valueName, TV? value)
    {
        StringBuilder? result;

        if (valueName.IsNullOrEmpty() && value is null)
        {
            result = null;
        }
        else
        {
            result = new StringBuilder();

            AddValueNameInfo<T>(valueName, result);
            AddValueInfo(value, result);
        }

        return result?.ToString();
    }

    /// <summary>
    /// Adds the info of the given <paramref name="name"/> to the given <see cref="StringBuilder"/>.
    /// </summary>
    /// <param name="name">The given name of the value argument</param>
    /// <param name="builder">The given <see cref="StringBuilder"/></param>
    /// <typeparam name="TVn">Current <see cref="Type"/></typeparam>
    private static void AddValueNameInfo<TVn>(string name, StringBuilder builder)
        => builder.Append(!name.IsNullOrWhiteSpace()
            ? $"{name.Trim()} [{typeof(TVn).Name}]"
            : $"No name [{typeof(T).Name}]");

    /// <summary>
    /// Adds the info of the given <paramref name="value"/> to the given <see cref="StringBuilder"/>.
    /// </summary>
    /// <param name="value">The given value</param>
    /// <param name="builder">The given <see cref="StringBuilder"/></param>
    /// <typeparam name="TVi">Current <see cref="Type"/></typeparam>
    private static void AddValueInfo<TVi>(TVi value, StringBuilder builder)
    {
        if (value is string s)
        {
            builder.Append($": '{s}' (Type: {s.GetType().Name})");
        }
        else
        {
            builder.Append(value is null ? " is null" : $": {value} (Type: {value.GetType().Name})");
        }
    }

    /// <summary>
    /// Static function to check if the <paramref name="oldValue"/> and <paramref name="newValue"/> are different.
    /// If they are different, a new <see cref="ChangeEventArgs{T}"/> is created and returned in <paramref name="e"/>.
    /// </summary>
    /// <param name="oldValue">The given old value</param>
    /// <param name="newValue">The given new value</param>
    /// <param name="e">[out] If there is a difference, the change event argument; otherwise <c>null</c></param>
    /// <returns>Is there a difference?</returns>
    public static bool HasChanged(T? oldValue, T? newValue, out ChangeEventArgs<T>? e)
    {
        bool result;
        e = null;
        if (typeof(T) == typeof(string))
        {
            var oldString = oldValue as string;
            var newString = newValue as string;
            result = !string.Equals(oldString, newString, StringComparison.CurrentCulture);
        }
        else
        {
            result = !Equals(oldValue, newValue);
        }

        if (result)
        {
            e = new ChangeEventArgs<T>(oldValue, newValue);
        }

        return result;
    }
}