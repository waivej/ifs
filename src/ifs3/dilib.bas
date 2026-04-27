Attribute VB_Name = "Module3"
Private Declare Function DIWriteJpg Lib "DILib.dll" Alias "#1" (DestPath As String, SrcPath As String, ByVal quality As Long, ByVal progressive As Long) As Long
Private Const DI_SUCCESS = 0
Private Const DI_ERR_CALL = 1
Private Const DI_ERR_INFILE = 2
Private Const DI_ERR_OUTFILE = 3

