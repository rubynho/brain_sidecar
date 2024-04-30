-module(functions).
-export([head/1, second/1]).

head([X|_]) -> X.

second([_,X|_]) -> X.

same(X,X) -> true;
same(_,_) -> false.
