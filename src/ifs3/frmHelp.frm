VERSION 5.00
Begin VB.Form frmHelp 
   Caption         =   "About Random IFS"
   ClientHeight    =   5040
   ClientLeft      =   4155
   ClientTop       =   3255
   ClientWidth     =   6885
   Icon            =   "frmHelp.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   5040
   ScaleWidth      =   6885
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton Command1 
      Caption         =   "Close"
      Height          =   375
      Left            =   5880
      TabIndex        =   1
      Top             =   4560
      Width           =   975
   End
   Begin VB.Label Label9 
      Caption         =   "www.invisiblegold.com/math/ifs"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   -1  'True
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   255
      Left            =   1605
      TabIndex        =   9
      Top             =   4755
      Width           =   2295
   End
   Begin VB.Label Label8 
      Caption         =   "For more information, samples, and the newest version, visit the IFS page online at"
      Height          =   495
      Left            =   120
      TabIndex        =   8
      Top             =   4560
      Width           =   4575
   End
   Begin VB.Image Image7 
      Height          =   705
      Left            =   1200
      Picture         =   "frmHelp.frx":0442
      Top             =   3480
      Width           =   4185
   End
   Begin VB.Label Label7 
      Caption         =   $"frmHelp.frx":2ACA
      Height          =   855
      Left            =   120
      TabIndex        =   7
      Top             =   2640
      Width           =   6615
   End
   Begin VB.Label Label6 
      Alignment       =   2  'Center
      Caption         =   "infinite steps"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   6.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   4080
      TabIndex        =   6
      Top             =   2280
      Width           =   855
   End
   Begin VB.Label Label5 
      Alignment       =   2  'Center
      Caption         =   "3 steps"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   6.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   3120
      TabIndex        =   5
      Top             =   2280
      Width           =   855
   End
   Begin VB.Label Label4 
      Alignment       =   2  'Center
      Caption         =   "2 steps"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   6.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   2160
      TabIndex        =   4
      Top             =   2280
      Width           =   855
   End
   Begin VB.Label Label3 
      Alignment       =   2  'Center
      Caption         =   "1 step"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   6.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   1200
      TabIndex        =   3
      Top             =   2280
      Width           =   855
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      Caption         =   "0 steps"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   6.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   240
      TabIndex        =   2
      Top             =   2280
      Width           =   855
   End
   Begin VB.Image Image6 
      Height          =   900
      Left            =   4080
      Picture         =   "frmHelp.frx":2C19
      Top             =   1320
      Width           =   900
   End
   Begin VB.Image Image5 
      Height          =   900
      Left            =   3120
      Picture         =   "frmHelp.frx":4AA8
      Top             =   1320
      Width           =   900
   End
   Begin VB.Image Image4 
      Height          =   900
      Left            =   2160
      Picture         =   "frmHelp.frx":66A9
      Top             =   1320
      Width           =   900
   End
   Begin VB.Image Image3 
      Height          =   900
      Left            =   1200
      Picture         =   "frmHelp.frx":81AE
      Top             =   1320
      Width           =   900
   End
   Begin VB.Image Image2 
      Height          =   900
      Left            =   240
      Picture         =   "frmHelp.frx":9E45
      Top             =   1320
      Width           =   900
   End
   Begin VB.Image Image1 
      Appearance      =   0  'Flat
      Height          =   1560
      Left            =   5280
      Picture         =   "frmHelp.frx":B51A
      Top             =   120
      Width           =   1500
   End
   Begin VB.Label Label1 
      Caption         =   $"frmHelp.frx":E1FA
      Height          =   1095
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   5055
   End
End
Attribute VB_Name = "frmHelp"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Declare Function ShellExecute Lib "shell32.dll" Alias "ShellExecuteA" (ByVal hwnd As Long, ByVal lpOperation As String, ByVal lpFile As String, ByVal lpParameters As String, ByVal lpDirectory As String, ByVal nShowCmd As Long) As Long

Private Sub Command1_Click()
    frmHelp.Visible = False
End Sub

Private Sub Label9_Click()
   ShellExecute vbNull, "open", "www.invisiblegold.com/math/ifs", vbNull, vbNull, 1
End Sub

