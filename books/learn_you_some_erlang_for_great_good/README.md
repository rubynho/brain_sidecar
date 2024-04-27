## List comprehensions

List comprehensions are ways to build or modify a list.

```erlang
# Get all even numbers from one to ten.
1> [X || X <- [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], X rem 2 =:= 0].
[2,4,6,8,10]
```
