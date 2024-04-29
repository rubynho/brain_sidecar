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

By covention the file name is the same as the module name, like mymodule.erl.

## Compiling files

The are different ways to compile erlang files, using the `erlc` CLI tool, giving the file name as argument. 

```sh
$ erlc mymodule.erl
```

Using the function `c/1` inside the erlang shell, giving the module name as argument.

```erlang
1> cd("path/to/file").
2> c(mymodule).
```

Compile erlang files to native code is also possible using the `native` flag in the shell, like so:

```erlang
1> c(mymodule,[native]).
```

Native code is not cross platform.
