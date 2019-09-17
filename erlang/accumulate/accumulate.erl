-module(accumulate).
-export([accumulate/2]).

accumulate(Fun, Ls) when is_function(Fun), is_list(Ls) ->
    accumulate(Fun, Ls, []).

accumulate(_Fun, [], Acc) ->
    lists:reverse(Acc);
accumulate(Fun, [H|T], Acc) ->
    accumulate(Fun, T, [Fun(H) | Acc]).
