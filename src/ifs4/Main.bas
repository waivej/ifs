Attribute VB_Name = "Module1"
Option Explicit

Public fMainForm As frmMain


Sub Main()
    Set fMainForm = New frmMain
    fMainForm.Show
End Sub

Public Function GetFileName()
    Dim File As stcFileStruct
    '// fill values (not required)
    File.strDialogtitle = "Open"
    File.strFilter = "Text Files *.ifs|*.ifs" '// use same format asCommonDialog Control
    ShowOpenDialog File
    GetFileName = File.strFileName
End Function

Public Function SaveFileName()
    Dim File As stcFileStruct
    '// fill values (not required)
    File.strDialogtitle = "Save As"
    File.strFilter = "Text Files *.bmp|*.bmp" '// use same format asCommonDialog Control
    ShowSaveDialog File
    SaveFileName = File.strFileName
End Function

