object CaesarCipher {
    private def shiftChar(base: Char, char: Char, offset: Int) =
        (base.toInt + ((char.toInt - base.toInt + offset) %26)).toChar
    def encrypt(phrase: String, shift: Int) = phrase.map {
        case x if x isLower => shiftChar('a', x, shift)
        case x => x
    }
    def decrypt(phrase: String, shift: Int) = encrypt(phrase, -shift)
    def solve(phrase: String, maxShift:Int): Unit = {
        if(maxShift > 0){
            println("Caesar " + maxShift + ": " + encrypt(phrase, maxShift))
            solve(phrase, (maxShift-1))
        }
        else {
            println("Caesar 0: " + phrase)
        }
    }
}
object Main extends App {
    val phrase = "babs test string"
    val shift = 5
    val maxShift = 26
    println("Original: " + phrase)
    val encrypted = CaesarCipher.encrypt(phrase, shift)
    println("Encrypted: " + encrypted)
    val decrypted = CaesarCipher.decrypt(encrypted, shift)
    println("Decrypted: " + decrypted)
    CaesarCipher.solve("dog", maxShift)
}