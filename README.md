# ahbsd.lib
Classes with functionality I miss

- In **Version 1.0** *generic EventArgs* and *EventArgs for changing values* were added.
- In **Version 1.0.1** some classes for *generic API-Keys* were added.
- In **Version 1.2** some code beautification was done, the license changes to Apache 2.0 and a *generic Exception* was added.
- In **Version 1.2.1** a tool for printing filled `DataTable` on the console was added.
- In **Version 1.3** a class to check whether a given password is safe or not was added.
- In **Version 1.4** `NamedCollections` were added.
- In **Version 1.5** some functionality was added and a lot of *SonarLint* issues were removed.
- In **Version 1.6** Extensions were added and used.

## Version 1.0:
### About generic EventArgs:
The generic EventArgs have a generic Value that could be set with the constructor.

### About generic ChangeEventArgs:
The generic ChangeEventArgs have two generic values. One for the old value and one for the new value.

## Version 1.4
### About NamedCollections:
Named collections have the main reason to be used in dictionaries which have as value a collection.
The other way would be to have a dictionary with a dictionary as value which would have as key a string with the name of the collection…

#### Example
Doing this with Dictionaries it would look like:

```c#
Dictionary<int, IDictionary<string, ICollection<double>>> dExample = new Dictionary<int, IDictionary<string, ICollection<double>>>();
IDictionary<string, ICollection<double>> tmp = new Dictionary<string, ICollection<double>>();
ICollection<double> doubleCollection1 = new Collection<double>();
tmp.Add("Double Collection 1", doubleCollection1);
dExample.Add(1, tmp);
dExample[1]["Double Collection 1"].Add(1.0);
dExample[1]["Double Collection 1"].Add(1.1);
dExample[1]["Double Collection 1"].Add(1.2);
```

With using ***IDictionaryOfNamedCollections*** it is much easier:

```c#
IDictionaryOfNamedCollections<int, double> dExample2 = new DictionaryOfNamedCollections<int, double>();
dExample2.Add(2, 1.0, "Double Collection 2");
dExample2.Add(2, 1.1);
dExample2.Add(2, 1.2);
```

## Version 1.6
Simplifing `string.IsNullOrEmpty()` and `string.IsNullOrWhiteSpace()` and the extraction of numbered lists in a `string`.

### Example for the extraction
If you have a numbered list, e.g.: `"1,2, 5, 99 ,8"` and want to get an *array* or *List* with the numbers, you can solve it e.g. like this:

```c#
string numberedList = "1,2, 5, 99 ,8";

// for a result array:
string[] numbers = numberedList.Split(',');
int[] intNumbers = new int[numbers.Count];

for (int i = 0; i < numbers.Count; i++)
{
    if (int.TryParse(numbers[i].Trim(), out int number)
    {
        intNumbers[i] = number;
    }
}

// for a result list:
IList<int> numberList = new List<int>();

foreach (string sNumber in numberedList.Split(','))
{
    if (int.TryParse(sNumber.Trim(), out int number)
    {
        numberList.Add(number);
    }
}
```

much shorter (because the last part is more ore less included) is the following:

```c#
string numberedList = "1,2, 5, 99 ,8";
IList<int> numberList = numberedList.GetIntList();
```

additionally the Extension also allows to set the splitter:

```c#
string numberedList = "1;2; 5; 99 ;8";
IList<int> numberList = numberedList.GetIntList(';');
```

[![ahbsd.lib on fuget.org](https://www.fuget.org/packages/ahbsd.lib/badge.svg)](https://www.fuget.org/packages/ahbsd.lib)
