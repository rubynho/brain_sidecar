## List comprehensions

List comprehensions are ways to build or modify a list.

```erlang
# Get all even numbers from one to ten.
1> [X || X <- [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], X rem 2 =:= 0].
[2,4,6,8,10]
```

## Modules

Modules are used to group related functions. Besides functions, modules also define attributes, which is the module's metadata. Many attributes can be defined, but only one is required, the module's name, defined like so:

```erlang
-module(mymodule)
```
