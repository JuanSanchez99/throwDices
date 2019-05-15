import System.Random

launchDices :: IO ()
launchDices = do
    x <- randomRIO (1,6) :: IO Int
    y <- randomRIO (1,6) :: IO Int
    putStrLn ("El primer jugador saco: "++show x)
    putStrLn ("El segundo jugador saco: "++show y)

    if x > y then putStrLn ("Gana el primer jugador: "++show x)
    else if y > x then putStrLn("Gana el segundo jugador: "++show y)
    else  putStrLn("Empate!!!")

play :: IO ()
play = do
launchDices
