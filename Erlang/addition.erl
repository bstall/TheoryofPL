% addition
%have to use module name helloworld for online compiler
-module(helloworld).
-export([start/0]).

%practice program for erlang
start() ->
    io:fwrite("~w", [5+5]).