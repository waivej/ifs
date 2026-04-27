Attribute VB_Name = "Random"
Dim RandSeed
Function Rand()
    Rand = Rnd
    'Rand = Seed Mod 12345652
    'Seed = Rand * 100000
End Function

Function RandRandomize()
    Randomize
End Function
