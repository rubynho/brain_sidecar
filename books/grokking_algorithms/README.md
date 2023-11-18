# Grokking Algorithms by Aditya Y. Bhargava

![grokking-algorithms](https://images.manning.com/264/352/resize/book/3/0b325da-eb26-4e50-8a2a-46042c647083/Bhargava-Algorithms_hires.png)

### Introduction

An algorithm is a set of instructions that accomplish a task.

### Binary search

The binary search is used to efficiently find an item in an ordered list. It works eliminating half of the list on each try, until it finds the item. For example, the algorithm could find the item of a list between 1 and 100 in at most 7 steps. Like so:

```
100 items -> 50 -> 25 -> 13 -> 7 -> 4 -> 2 -> *1*
```

It's different than the simple search which finds the item in a sequential way, meaning it would take at most 100 tries for a list of 100 items.

For example, if the disired item is at the last position:

```
100 items -> 1 -> 2 -> ... -> 99 -> *100*
```
