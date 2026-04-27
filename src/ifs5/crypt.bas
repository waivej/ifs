Attribute VB_Name = "crypt"
Option Explicit

'********************************************
' Crypt
'
' This code encrypts the input string.
'********************************************
Public Function Crypt1(ByVal Text As String, ByVal Key As String) As String
    Dim i As Long, KeyLen As Long, KeyPtr As Long, KeyChr As Integer, TextChr As Integer
        KeyLen = Len(Key)
        For i = 1 To Len(Text)
            TextChr = Asc(Mid(Text, i, 1))
            KeyChr = Asc(Mid(Key, KeyPtr + 1, 1))
            
            Mid(Text, i, 1) = Chr(TextChr Xor KeyChr)
            KeyPtr = ((KeyPtr + 1) Mod KeyLen)
        Next i
    Crypt1 = Text
End Function

