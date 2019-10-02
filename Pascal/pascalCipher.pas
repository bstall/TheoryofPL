(*author. Barbara Stall*)
(*Pascal Caesar Cipher*)
Program PascalCaesar(output);

(*Encryption procedure*)
(*procedures are like methods*)
procedure encrypt(var s : string; count : integer);
var
    i : integer;
     begin
        for i := 1 to length(s) do case s[i] of
        'A'..'Z': s[i] := chr(ord('A') + (ord(s[i]) - ord('A') + count) mod 26);
        (*chr returns ASCII character, ord returns ordinal value *)
     end;
end;
(*Decryption procedure*)
procedure decrypt(var s : string; count : integer);
var
    i : integer;
     begin
        for i := 1 to length(s) do case s[i] of
        'A'..'Z': s[i] := chr(ord('A') + (ord(s[i]) - ord('A') - count + 26) mod 26);
     end;
end;
//this is also a comment line
(*Solve procedure*)
procedure solve(var s : string; maxShift : integer);
var
    (*initialize looping variables*)
    z : integer;
    i : integer;
    begin
    z := 0;
        while z <= maxShift do
            begin
                for i := 1 to length(s) do case s[i] of
                'A'..'Z': s[i] := chr(ord('A') + (ord(s[i]) - ord('A') - i + 26) mod 26);
            end;
        (*prints the cases each iteration*)
        writeln('Case ', z, ': ', s);
        z := z + 1;
    end;
end;

var
    (*initialize variables in this scope*)
    count : integer;
    s : string;
    maxShift : integer;
    
    begin
        count := 5;
        (*string to encode*)
        s := 'STALL CIPHER TEST';
        writeln('Original: ', s);
        encrypt(s, count);
        writeln('Encrypted: ', s);
        decrypt(s, count);
        writeln('Decrypted: ', s);
        (*25 because 0 is start value*)
        maxShift := 25;
        solve(s, maxShift);
    end.