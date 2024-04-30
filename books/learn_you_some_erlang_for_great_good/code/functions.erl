-module(functions).
-export([head/1, second/1, same/2, right_age/1, wrong_age/1]).

head([X|_]) -> X.

second([_,X|_]) -> X.

same(X,X) -> true;
same(_,_) -> false.

% The functions below are equivalent.
% Using `,` as a guard separator acts as a `andalso` all guards must pass.
% Using `;` acts as a `oralso`, if the first guard pass the others are not checked, otherwise the next is checked.

right_age(X) when X >= 16, X =< 104 -> true;
right_age(_) -> false.

wrong_age(X) when X < 16, X > 104 -> true;
wrong_age(_) -> false.
