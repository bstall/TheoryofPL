% hello world program
-module(helloworld).
-export([start/0]).

%practice program for erlang
start() ->
    io:fwrite("Hello, world!\n").