// //
// //    ahbsd.lib
// //    Test_xUnit
// //    TestApiAttribute.cs
// //
// //    Copyright 2022 Alexandra Hermann – Beratung, Software, Design
// //
// //    Licensed under the Apache License, Version 2.0 (the "License");
// //    you may not use this file except in compliance with the License.
// //    You may obtain a copy of the License at
// //
// //        http://www.apache.org/licenses/LICENSE-2.0
// //
// //    Unless required by applicable law or agreed to in writing, software
// //    distributed under the License is distributed on an "AS IS" BASIS,
// //    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// //    See the License for the specific language governing permissions and
// //    limitations under the License.
// 

using System;
using System.Collections.Generic;
using System.Diagnostics.CodeAnalysis;
using System.Linq;
using System.Reflection;
using ahbsd.lib.Attributes;
using JetBrains.Annotations;
using Xunit;

namespace Test_xUnit.Attributes;

[TestSubject(typeof(ApiAttribute))]
public class TestApiAttribute
{
    [Fact]
    public void Test5TestClasses()
    {
        var fiveObjects = new List<ITestClass>(5);

        for (var i = 0; i < 3; i++)
        {
            var tmpObject = new TestClass($"#{i}");
            Assert.Equal($"#{i}", tmpObject.Content);
            fiveObjects.Add(tmpObject);
        }

        var test4 = new TestClass();
        var test5 = new TestClass();

        fiveObjects.Add(test4);
        fiveObjects.Add(test5);

        foreach (var fiveObject in fiveObjects)
        {
            Assert.Contains("Api", AttributeReader.GetFirstApiAttribute(fiveObject)?.ToString());
        }

        try
        {
            foreach (var usingType in ApiAttribute.UsingTypes)
            {
                Assert.Equal(typeof(TestClass), usingType);
            }
        }
        catch (Exception)
        {
            // we don't care
        }
        
    }
}

internal static class AttributeReader
{
    public static CustomAttributeData? GetFirstApiAttribute(object? o)
    {
        CustomAttributeData? result = null;

        if (o != null)
        {
            var type = o.GetType();
            
            result = type.CustomAttributes.FirstOrDefault(a => a.AttributeType == typeof(ApiAttribute));
            Assert.NotNull(result);

            var attr = type.GetCustomAttributes(typeof(ApiAttribute), true).FirstOrDefault();
            if (attr is ApiAttribute apiAttribute)
            {
                Assert.NotEmpty(apiAttribute.CallerName);
                Assert.NotNull(apiAttribute.CallerType);
            }
        }

        return result;
    }
}

internal interface ITestClass
{
    /// <summary>
    /// Gets the content.
    /// </summary>
    /// <value>The content</value>
    string Content { get; }
}

[Api]
internal class TestClass : ITestClass
{
    /// <summary>
    /// Constructor with optional content.
    /// </summary>
    /// <param name="content">[optional] content</param>
    public TestClass(string? content = null) => Content = content ?? string.Empty;

    /// <inheritdoc/>
    public string Content { get; }
}