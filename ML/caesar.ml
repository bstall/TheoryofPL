# Barbara Stall
# Functional Programming
# ML Caesar cipher
fun shiftChar(char, numShift) = let 
    val charValue = Char.ord(Char.toUpper(char))
    in
    if charValue >= 65 andalso charValue <= 90 then
        char.chr((charValue -65 + numShift)mod(26) + 65)
    else char.chr(charValue)
    end;
#encrypt
fun encrypt(string, numShift) = (
    String.implode(map(fn char => shiftChar(char, numShift))(String.explode(string)))
);
#decrypt
fun decrypt(string, numShift) = (encrypt(string, numShift * ~1));
#solve
fun solve(string, maxShift) = (
    print("Caesar " ^ Int.toString(maxShift) ^ ": " ^ encrypt(string, maxShift) ^ "\n");
    if maxShift > 0
        then solve(string, maxShift - 1)
    else NONE
);
#run program
val testStr = "babs test string";
print("Original: " ^ testStr ^ "\n");
print("Encrypted: " ^ encrypt(testStr, 5) ^ "\n");