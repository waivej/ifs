Attribute VB_Name = "Timing"
Private ElapsedTime(20)
Private Counter(20)
Private StartTime(20)
Private SegmentTitle(20)

Declare Function GetTickCount Lib "kernel32.dll" () As Long

Public Function InitializeTimers()
    Dim i
    For i = 0 To UBound(Counter)
        ElapsedTime(i) = 0
        Counter(i) = 0
        StartTime(i) = 0
    Next
End Function

Public Function StartTimer(index, title)
    StartTime(index) = GetTickCount()
    Counter(index) = Counter(index) + 1
    SegmentTitle(index) = title
End Function

Public Function Stoptimer(index)
    ElapsedTime(index) = ElapsedTime(index) + GetTickCount() - StartTime(index)
End Function

Public Function GetTimingResults()
    Dim i, message, total
    
    total = 0
    For i = 0 To UBound(Counter)
        If (Counter(i) <> 0) Then
            total = total + ElapsedTime(i)
        End If
    Next
    
    
    message = "Timing Results:" & Chr(13) & Chr(13) & "Total: " & total
    
    For i = 0 To UBound(Counter)
        If (Counter(i) <> 0) Then
            message = message & Chr(13) & SegmentTitle(i) & ": " & ElapsedTime(i) & " (" & Int(ElapsedTime(i) / total * 100) & "%)"
        End If
    Next
    MsgBox (message)
End Function

