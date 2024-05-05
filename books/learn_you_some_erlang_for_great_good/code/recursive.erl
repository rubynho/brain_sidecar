-module(recursive).
-export([fac/1]).

fac(0) -> 1;
fac(N) when N > 0 -> N * fac(N - 1).

% The function above has a linear growth, which means it grows as much as there elements. To write an iterative version, an extra param is necessary to accumulate de result. It's called tail recursion.
tail_fac(N) -> tail_fac(N, 1).
tail_fac(0, Acc) -> Acc;
tail_fac(N, Acc) -> when N > 0 -> tail_fac(N - 1, N * Acc);


% Recursively finds the lenght of a list.
% It would unfold like so:
% len([1, 2, 3, 4]) = len([1 | [2, 3, 4]])
%                   = 1 + len([2 | [3, 4]])
%                   = 1 + 1 + len([3 | [4]])
%                   = 1 + 1 + 1 + len([4 | []])
%                   = 1 + 1 + 1 + 1 + len([])
%                   = 1 + 1 + 1 + 1 + 0
%                   = 1 + 1 + 1 + 1
%                   = 1 + 1 + 2
%                   = 1 + 3
%                   = 4

len([]) -> 0;
len([_, T]) -> 1 + len(T).
