-module(what_the_if).
-export([heh_fine/0, oh_god/1, help_me/1]).

% This function will log some warnings whem compiled and when called will raise the following error:
%
% ** exception error: no true branch found when evaluating an if expression
%    in function  what_the_if:heh_fine/0 (what_the_if.erl, line 11)
%
% It's because no if will ever return anything, and in Erlang there's always has to return something, so the compiler throws an error.
heh_fine() ->
    if 1 =:= 1 ->
        works
    end,
    if 1 =:= 2; 1 =:= 1 ->
        works
    end,
    if 1 =:= 2, 1 =:= 1 ->
        fails 
    end.

oh_god(N) ->
    if N =:= 2 -> might_succeed;
    true -> always_does % this is Erlang's if's 'else!'
    end.

% Example of an if expression with multiple guards. Here is easy to see how the lack of a true branch would mess things up, considering Erlang has no nil return.

help_me(Animal) ->
    Talk = if Animal == cat   -> "meow";
	       Animal == beef -> "mooo";
	       Animal == dog  -> "bark";
	       Animal == tree -> "bark";
	       true -> "alelek"
	    end,
    {Animal, "says " ++ Talk ++ "!"}.
