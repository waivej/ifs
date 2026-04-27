VERSION 5.00
Begin VB.Form frmAnimate 
   Caption         =   "Create Animation"
   ClientHeight    =   2490
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   5505
   LinkTopic       =   "Form1"
   ScaleHeight     =   2490
   ScaleWidth      =   5505
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton Command5 
      Caption         =   "Create Animation (Infinite Iterations)"
      Height          =   615
      Left            =   3840
      TabIndex        =   13
      Top             =   1800
      Width           =   1575
   End
   Begin VB.CommandButton Command4 
      Caption         =   "Browse"
      Height          =   255
      Left            =   4440
      TabIndex        =   12
      Top             =   1440
      Width           =   855
   End
   Begin VB.CommandButton Command3 
      Caption         =   "Browse"
      Height          =   255
      Left            =   4440
      TabIndex        =   11
      Top             =   1080
      Width           =   855
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Browse"
      Height          =   255
      Left            =   4440
      TabIndex        =   10
      Top             =   720
      Width           =   855
   End
   Begin VB.TextBox OutputFile 
      Height          =   285
      Left            =   1200
      TabIndex        =   8
      Top             =   1440
      Width           =   3135
   End
   Begin VB.TextBox frmFrames 
      Height          =   285
      Left            =   1200
      TabIndex        =   7
      Text            =   "90"
      Top             =   1920
      Width           =   855
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Create Animation (Finite Iterations)"
      Height          =   615
      Left            =   2160
      TabIndex        =   5
      Top             =   1800
      Width           =   1575
   End
   Begin VB.TextBox EndFile 
      Height          =   285
      Left            =   1200
      TabIndex        =   1
      Top             =   1080
      Width           =   3135
   End
   Begin VB.TextBox StartFile 
      Height          =   285
      Left            =   1200
      TabIndex        =   0
      Top             =   720
      Width           =   3135
   End
   Begin VB.Label Label5 
      Alignment       =   1  'Right Justify
      Caption         =   "Output File:"
      Height          =   255
      Left            =   0
      TabIndex        =   9
      Top             =   1440
      Width           =   1095
   End
   Begin VB.Label Label4 
      Alignment       =   1  'Right Justify
      Caption         =   "# of Frames:"
      Height          =   255
      Left            =   120
      TabIndex        =   6
      Top             =   1920
      Width           =   975
   End
   Begin VB.Label Label3 
      Alignment       =   1  'Right Justify
      Caption         =   "End IFS File:"
      Height          =   255
      Left            =   0
      TabIndex        =   4
      Top             =   1080
      Width           =   1095
   End
   Begin VB.Label Label2 
      Alignment       =   1  'Right Justify
      Caption         =   "Start IFS File:"
      Height          =   255
      Left            =   0
      TabIndex        =   3
      Top             =   720
      Width           =   1095
   End
   Begin VB.Label Label1 
      Caption         =   $"animation.frx":0000
      Height          =   495
      Left            =   120
      TabIndex        =   2
      Top             =   120
      Width           =   5175
   End
End
Attribute VB_Name = "frmAnimate"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Text1_Change()

End Sub


Private Sub Test()
    Dim startifs(14, 7)
    rval = frmMain.LoadFileIntoArray(StartFile.Text, startifs)
    frmMain.LoadArrayIntoFields (startifs)
    Call frmMain.RunTransform(False)
End Sub

Private Sub CreateAnimation(Optional RunFinite = False)
    Dim startifs(14, 7), endifs(14, 7), currentframe(14, 7)
    Dim completefile, framestring
    fname = OutputFile.Text
    
    rval = frmMain.LoadFileIntoArray(StartFile.Text, startifs)
    rval = frmMain.LoadFileIntoArray(EndFile.Text, endifs)
    
    Dim i, frames
    frames = Int(frmFrames.Text)
    For i = 0 To frames
        rval = frmMain.GetIntermediateIFS(startifs, endifs, currentframe, i, frames)
        frmMain.LoadArrayIntoFields (currentframe)
        
        Call frmMain.RunTransform(RunFinite)
        
        completefile = Replace(LCase(fname), ".bmp", "") & GetFramestring(i, frames) & ".bmp"
        frmMain.SaveBMP (completefile)
        
        'frmMain.AutoRedraw = True
        'frmMain.Refresh
        'frmMain.PaintPicture
        MsgBox ("frame " & i & " is done.")
    Next
    
    MsgBox "Done!", vbOKOnly
End Sub

Function GetFramestring(currentframe, frames)
    GetFramestring = 10000 + currentframe
    GetFramestring = "_" & Mid(GetFramestring, 2)
End Function


Private Sub Command2_Click()
    StartFile.Text = GetFileName()
End Sub

Private Sub Command3_Click()
    EndFile.Text = GetFileName()
End Sub


Private Sub Command4_Click()
    OutputFile.Text = SaveFileName()
End Sub

Private Sub Command1_Click()
    Call CreateAnimation(True)
End Sub

Private Sub Command5_Click()
    Call CreateAnimation(False)
End Sub

Private Sub Command6_Click()
    Call Test
End Sub
