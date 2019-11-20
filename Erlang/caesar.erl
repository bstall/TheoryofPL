% Barbara Stall
%Caesar cipher
%have to use module name helloworld for online compiler
-module(helloworld).
-export([encrypt/2, decrypt/2, solve/2, main/0]).
shiftChar(Char, ShiftNum) when (Char /= " ") ->
    CharNum = fun([Character]) -> Character end,
    (((CharNum(Char) - 65 + ShiftNum) rem(26) + 26) rem 26) + 65;
shiftChar(Char, _ShiftNum) ->
    Char.
encrypt(Phrase, ShiftNum) ->
    Shifted = lists:map(fun(Char) -> shiftChar([string:to_upper(Char)], ShiftNum) end, Phrase).
decrypt(Phrase, ShiftNum) ->
    encrypt(Phrase, ShiftNum * -1).
solve(WordSlv, MaxShift) ->
    ListOfNums = lists:seq(0, MaxShift),
    lists:foreach(fun(ShiftNum) ->
        Encrypted = encrypt(WordSlv, ShiftNum * -1),
        io:fwrite("Caesar ~p: ~s~n", [ShiftNum, Encrypted]),
        encrypt(WordSlv, ShiftNum * -1) end, ListOfNums).
main() ->
    Phrase = "babs test string",
    WordSlv = "dog",
    io:format("Original: ~s~n", [Phrase]),
    Encrypted = encrypt(Phrase, 5),
    io:format("Encrypted: ~s~n", [Encrypted]),
    Decrypted = decrypt("gfgx yjxy xywnsl", 5),
    io:format("Decrypted: ~s~n", [Decrypted]),
    solve(WordSlv, 26).