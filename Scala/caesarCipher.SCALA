//Barbara Stall
//Scala Caesar Cipher
class Scala_Caesar{
    var str = ""
    //Encrypt
    def encrypt(shift: Int): String = {
        val nShift = shift % 26
        val charArray = this.str.toCharArray()
        
        var lastStr = ""
        
        for(i<-charArray){ 
            if(i.toInt == 32){
                lastStr += " "
            }
            else{
                var otherStr = (i.toInt - 65 + nShift) % 26
                if(otherStr < 0){
                    otherStr += 26
                }
                lastStr += (otherStr + 65).toChar
            }
        }
        return lastStr
    }
    //Decrypt
    def decrypt(shift : Int): String = {
        return encrypt(shift * - 1)
    }
    //Solve
    def solve(maxShift : Int){
        for(i <- 1 to maxShift){
            println("Case: "+ i + " " + encrypt(i))
        }
    }
}
object CaesarMain{
    def main(args: Array[String]){
        var scalaCaesar = new Scala_Caesar()
        scalaCaesar.str = "STALL CIPHER TEST"
        print("Original: ")
        println(scalaCaesar.str)
        
        scalaCaesar.str = scalaCaesar.encrypt(5)
        print("Encrypted: ")
        println(scalaCaesar.str)
        
        scalaCaesar.str = scalaCaesar.decrypt(5)
        print("Decrypted: ")
        println(scalaCaesar.str)
        
        println(scalaCaesar.solve(26))
    }
}