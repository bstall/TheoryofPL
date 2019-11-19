fun shiftChar (char,numShift) = (let 
    val charValue = Char.ord(Char.toUpper(char)) in
    if (charValue >= 65 andalso charValue <= 90) then
        (Char.chr((charValue - 65 + numShift) mod(26) + 65))
    else (Char.chr(charValue))
    end);
fun encrypt (string, numShift) = (
    String.implode(map(fn char => shiftChar(char, numShift))(String.explode(string))))
;
fun decrypt (string, numShift) = (encrypt(string, numShift * ~1))
;
fun solve (string, maxShift) = (
    print("Caesar " ^ Int.toString(maxShift) ^ ": " ^ encrypt(string, maxShift) ^ "\n");
    if maxShift > 0
        then solve(string, maxShift - 1)
    else NONE)
;
val testStr = "babs test string";
val encryptedStr = "gfgx yjxy xywnsl";
print("Original: " ^ testStr ^ "\n");
print("Encrypted: " ^ encrypt(testStr, 5) ^ "\n");
print("Decrypted: " ^ decrypt(encryptedStr, 5) ^ "\n");
solve("DOG", 26);
