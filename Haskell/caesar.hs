--Barbara Stall
--Caesar cipher
import Data.Char (ord, chr)
shiftChar :: Char -> Int -> Char -> Char
shiftChar base offset char = chr $ ord base + (ord char - ord base + offset) 'mod' 26
encrypt :: Int -> String -> String
encrypt shift = map phrase
    where phrase char 
        | char >= 'a' && char <= 'z' = shiftChar 'a' shift char
        | otherwise = char
decrypt :: Int -> String -> String
decrypt shift = encrypt (-shift)
solve :: Int -> String -> IO()
solve maxshift phrase
    | maxshift > 0 do
        putStrLn("Caesar " ++ show maxshift ++": "++ encrypt maxshift phrase)
        solve(maxshift-1) phrase
    | otherwise = putStrLn("Caesar " ++ show maxshift ++ ": "++ phrase)
main :: IO ()
main = do
    putStrLn("Original: babs test string")
    putStrLn("Encrypted: " ++ encrypt 5 "babs test string")
    putStrLn("Decrypted: "++ decrypt 5 (encrypt 5 "babs test string"))
    solve 26 "dog"