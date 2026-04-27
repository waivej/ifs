VERSION 5.00
Begin VB.Form frmMain 
   AutoRedraw      =   -1  'True
   BorderStyle     =   1  'Fixed Single
   Caption         =   "IFS 3.0  - www.invisiblegold.com/math"
   ClientHeight    =   5895
   ClientLeft      =   180
   ClientTop       =   720
   ClientWidth     =   9630
   Icon            =   "frmMain.frx":0000
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   5895
   ScaleWidth      =   9630
   StartUpPosition =   2  'CenterScreen
   Begin VB.TextBox txtPhi9 
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   405
      Left            =   1800
      TabIndex        =   60
      Top             =   4200
      Width           =   580
   End
   Begin VB.TextBox txtPhi8 
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   405
      Left            =   1800
      TabIndex        =   53
      Top             =   3720
      Width           =   580
   End
   Begin VB.TextBox txtPhi7 
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   405
      Left            =   1800
      TabIndex        =   46
      Top             =   3240
      Width           =   580
   End
   Begin VB.TextBox TxtPhi6 
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   405
      Left            =   1800
      TabIndex        =   39
      Top             =   2760
      Width           =   580
   End
   Begin VB.TextBox txtPhi5 
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   405
      Left            =   1800
      TabIndex        =   32
      Top             =   2280
      Width           =   580
   End
   Begin VB.TextBox txtPhi4 
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   405
      Left            =   1800
      TabIndex        =   25
      Top             =   1800
      Width           =   580
   End
   Begin VB.TextBox txtPhi3 
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   405
      Left            =   1800
      TabIndex        =   18
      Top             =   1320
      Width           =   580
   End
   Begin VB.TextBox txtPhi2 
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   405
      Left            =   1800
      TabIndex        =   11
      Top             =   840
      Width           =   580
   End
   Begin VB.TextBox txtPhi1 
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   405
      Left            =   1800
      TabIndex        =   4
      Top             =   360
      Width           =   580
   End
   Begin VB.TextBox txtR9 
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   405
      Left            =   0
      TabIndex        =   57
      Top             =   4200
      Width           =   580
   End
   Begin VB.TextBox txtR8 
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   405
      Left            =   0
      TabIndex        =   50
      Top             =   3720
      Width           =   580
   End
   Begin VB.TextBox txtR7 
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   405
      Left            =   0
      TabIndex        =   43
      Top             =   3240
      Width           =   580
   End
   Begin VB.TextBox txtS9 
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   405
      Left            =   600
      TabIndex        =   58
      Top             =   4200
      Width           =   580
   End
   Begin VB.TextBox txtTheta9 
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   405
      Left            =   1200
      TabIndex        =   59
      Top             =   4200
      Width           =   585
   End
   Begin VB.TextBox txtE9 
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   405
      Left            =   2400
      TabIndex        =   61
      Top             =   4200
      Width           =   580
   End
   Begin VB.TextBox txtF9 
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   405
      Left            =   3000
      TabIndex        =   62
      Top             =   4200
      Width           =   580
   End
   Begin VB.TextBox txtP9 
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   405
      Left            =   3600
      TabIndex        =   63
      Top             =   4200
      Width           =   580
   End
   Begin VB.TextBox txtS8 
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   405
      Left            =   600
      TabIndex        =   51
      Top             =   3720
      Width           =   580
   End
   Begin VB.TextBox txtTheta8 
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   405
      Left            =   1200
      TabIndex        =   52
      Top             =   3720
      Width           =   585
   End
   Begin VB.TextBox txtE8 
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   405
      Left            =   2400
      TabIndex        =   54
      Top             =   3720
      Width           =   580
   End
   Begin VB.TextBox txtF8 
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   405
      Left            =   3000
      TabIndex        =   55
      Top             =   3720
      Width           =   580
   End
   Begin VB.TextBox txtP8 
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   405
      Left            =   3600
      TabIndex        =   56
      Top             =   3720
      Width           =   580
   End
   Begin VB.TextBox txtS7 
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   405
      Left            =   600
      TabIndex        =   44
      Top             =   3240
      Width           =   580
   End
   Begin VB.TextBox txtTheta7 
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   405
      Left            =   1200
      TabIndex        =   45
      Top             =   3240
      Width           =   585
   End
   Begin VB.TextBox txtE7 
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   405
      Left            =   2400
      TabIndex        =   47
      Top             =   3240
      Width           =   580
   End
   Begin VB.TextBox txtF7 
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   405
      Left            =   3000
      TabIndex        =   48
      Top             =   3240
      Width           =   580
   End
   Begin VB.TextBox txtP7 
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   405
      Left            =   3600
      TabIndex        =   49
      Top             =   3240
      Width           =   580
   End
   Begin VB.TextBox txtR1 
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   405
      Left            =   0
      TabIndex        =   1
      Text            =   ".5"
      Top             =   360
      Width           =   580
   End
   Begin VB.TextBox txtS1 
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   405
      Left            =   600
      TabIndex        =   2
      Text            =   ".5"
      Top             =   360
      Width           =   580
   End
   Begin VB.TextBox txtTheta1 
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   405
      Left            =   1200
      TabIndex        =   3
      Top             =   360
      Width           =   585
   End
   Begin VB.TextBox txtE1 
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   405
      Left            =   2400
      TabIndex        =   5
      Top             =   360
      Width           =   580
   End
   Begin VB.TextBox txtF1 
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   405
      Left            =   3000
      TabIndex        =   6
      Top             =   360
      Width           =   580
   End
   Begin VB.TextBox txtR2 
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   405
      Left            =   0
      TabIndex        =   8
      Text            =   ".5"
      Top             =   840
      Width           =   580
   End
   Begin VB.TextBox txtS2 
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   405
      Left            =   600
      TabIndex        =   9
      Text            =   ".5"
      Top             =   840
      Width           =   580
   End
   Begin VB.TextBox txtTheta2 
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   405
      Left            =   1200
      TabIndex        =   10
      Top             =   840
      Width           =   585
   End
   Begin VB.TextBox txtE2 
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   405
      Left            =   2400
      TabIndex        =   12
      Text            =   ".5"
      Top             =   840
      Width           =   580
   End
   Begin VB.TextBox txtF2 
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   405
      Left            =   3000
      TabIndex        =   13
      Top             =   840
      Width           =   580
   End
   Begin VB.TextBox txtR3 
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   405
      Left            =   0
      TabIndex        =   15
      Text            =   ".5"
      Top             =   1320
      Width           =   580
   End
   Begin VB.TextBox txtS3 
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   405
      Left            =   600
      TabIndex        =   16
      Text            =   ".5"
      Top             =   1320
      Width           =   580
   End
   Begin VB.TextBox txtTheta3 
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   405
      Left            =   1200
      TabIndex        =   17
      Top             =   1320
      Width           =   585
   End
   Begin VB.TextBox txtE3 
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   405
      Left            =   2400
      TabIndex        =   19
      Top             =   1320
      Width           =   580
   End
   Begin VB.TextBox txtF3 
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   405
      Left            =   3000
      TabIndex        =   20
      Text            =   ".5"
      Top             =   1320
      Width           =   580
   End
   Begin VB.TextBox txtR4 
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   405
      Left            =   0
      TabIndex        =   22
      Top             =   1800
      Width           =   580
   End
   Begin VB.TextBox txtS4 
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   405
      Left            =   600
      TabIndex        =   23
      Top             =   1800
      Width           =   580
   End
   Begin VB.TextBox txtTheta4 
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   405
      Left            =   1200
      TabIndex        =   24
      Top             =   1800
      Width           =   585
   End
   Begin VB.TextBox txtE4 
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   405
      Left            =   2400
      TabIndex        =   26
      Top             =   1800
      Width           =   580
   End
   Begin VB.TextBox txtF4 
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   405
      Left            =   3000
      TabIndex        =   27
      Top             =   1800
      Width           =   580
   End
   Begin VB.TextBox txtR5 
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   405
      Left            =   0
      TabIndex        =   29
      Top             =   2280
      Width           =   580
   End
   Begin VB.TextBox txtS5 
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   405
      Left            =   600
      TabIndex        =   30
      Top             =   2280
      Width           =   580
   End
   Begin VB.TextBox txtTheta5 
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   405
      Left            =   1200
      TabIndex        =   31
      Top             =   2280
      Width           =   585
   End
   Begin VB.TextBox txtE5 
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   405
      Left            =   2400
      TabIndex        =   33
      Top             =   2280
      Width           =   580
   End
   Begin VB.TextBox txtF5 
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   405
      Left            =   3000
      TabIndex        =   34
      Top             =   2280
      Width           =   580
   End
   Begin VB.TextBox txtR6 
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   405
      Left            =   0
      TabIndex        =   36
      Top             =   2760
      Width           =   580
   End
   Begin VB.TextBox txtS6 
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   405
      Left            =   600
      TabIndex        =   37
      Top             =   2760
      Width           =   580
   End
   Begin VB.TextBox txtTheta6 
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   405
      Left            =   1200
      TabIndex        =   38
      Top             =   2760
      Width           =   585
   End
   Begin VB.TextBox txtE6 
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   405
      Left            =   2400
      TabIndex        =   40
      Top             =   2760
      Width           =   580
   End
   Begin VB.TextBox txtF6 
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   405
      Left            =   3000
      TabIndex        =   41
      Top             =   2760
      Width           =   580
   End
   Begin VB.TextBox txtP1 
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   405
      Left            =   3600
      TabIndex        =   7
      Top             =   360
      Width           =   580
   End
   Begin VB.TextBox txtP2 
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   405
      Left            =   3600
      TabIndex        =   14
      Top             =   840
      Width           =   580
   End
   Begin VB.TextBox txtP3 
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   405
      Left            =   3600
      TabIndex        =   21
      Top             =   1320
      Width           =   580
   End
   Begin VB.TextBox txtP4 
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   405
      Left            =   3600
      TabIndex        =   28
      Top             =   1800
      Width           =   580
   End
   Begin VB.TextBox txtP5 
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   405
      Left            =   3600
      TabIndex        =   35
      Top             =   2280
      Width           =   580
   End
   Begin VB.TextBox txtP6 
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   405
      Left            =   3600
      TabIndex        =   42
      Top             =   2760
      Width           =   580
   End
   Begin VB.TextBox txtY2 
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   405
      Left            =   8040
      TabIndex        =   71
      Text            =   "1.02"
      Top             =   5460
      Width           =   735
   End
   Begin VB.TextBox txtY1 
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   405
      Left            =   7320
      TabIndex        =   70
      Text            =   "-1.02"
      Top             =   5460
      Width           =   735
   End
   Begin VB.TextBox txtX2 
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   405
      Left            =   6000
      TabIndex        =   69
      Text            =   "1.02"
      Top             =   5460
      Width           =   735
   End
   Begin VB.TextBox txtX1 
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   405
      Left            =   5280
      TabIndex        =   68
      Text            =   "-1.02"
      Top             =   5460
      Width           =   735
   End
   Begin VB.CommandButton cmdRunInfinite 
      Caption         =   "Run Infinite Iterations"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   1800
      TabIndex        =   67
      Top             =   5280
      Width           =   2175
   End
   Begin VB.TextBox TxtPoints 
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   360
      Left            =   2880
      MaxLength       =   6
      TabIndex        =   65
      Text            =   "60000"
      Top             =   4800
      Width           =   975
   End
   Begin VB.TextBox TxtIterations 
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   360
      Left            =   1440
      TabIndex        =   64
      Text            =   "5"
      Top             =   4800
      Width           =   495
   End
   Begin VB.CommandButton cmdRun 
      Caption         =   "Run"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   360
      TabIndex        =   66
      Top             =   5280
      Width           =   1335
   End
   Begin VB.PictureBox Picture1 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      BackColor       =   &H80000005&
      ForeColor       =   &H80000008&
      Height          =   5280
      Left            =   4200
      ScaleHeight     =   5250
      ScaleWidth      =   5370
      TabIndex        =   76
      Top             =   0
      Width           =   5400
      Begin VB.Image Image1 
         Height          =   5250
         Left            =   0
         Picture         =   "frmMain.frx":0442
         Top             =   0
         Width           =   5370
      End
   End
   Begin VB.Image Image3 
      Height          =   150
      Left            =   1920
      Picture         =   "frmMain.frx":0CC1
      Top             =   5010
      Width           =   195
   End
   Begin VB.Image Image2 
      Height          =   150
      Left            =   1920
      Picture         =   "frmMain.frx":0D29
      Top             =   4820
      Width           =   195
   End
   Begin VB.Label Label10 
      Alignment       =   2  'Center
      Caption         =   "Rendering image, please wait..."
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   4440
      TabIndex        =   92
      Top             =   2040
      Width           =   5175
   End
   Begin VB.Label Label9 
      Alignment       =   2  'Center
      BackColor       =   &H80000004&
      Caption         =   "phi"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   1920
      TabIndex        =   91
      Top             =   120
      Width           =   375
   End
   Begin VB.Label Label8 
      Alignment       =   1  'Right Justify
      BackColor       =   &H80000000&
      Caption         =   "T9"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   405
      Left            =   -285
      TabIndex        =   90
      Top             =   4200
      Width           =   585
   End
   Begin VB.Label Label7 
      Alignment       =   1  'Right Justify
      BackColor       =   &H80000000&
      Caption         =   "T8"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   405
      Left            =   -285
      TabIndex        =   89
      Top             =   3720
      Width           =   585
   End
   Begin VB.Label Label6 
      Alignment       =   1  'Right Justify
      BackColor       =   &H80000000&
      Caption         =   "T7"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   405
      Left            =   -285
      TabIndex        =   88
      Top             =   3240
      Width           =   585
   End
   Begin VB.Label lblT1 
      Alignment       =   1  'Right Justify
      BackColor       =   &H80000000&
      Caption         =   "T1"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   405
      Left            =   -285
      TabIndex        =   87
      Top             =   360
      Width           =   585
   End
   Begin VB.Label lblT2 
      Alignment       =   1  'Right Justify
      BackColor       =   &H80000000&
      Caption         =   "T2"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   405
      Left            =   -285
      TabIndex        =   86
      Top             =   840
      Width           =   585
   End
   Begin VB.Label lblT3 
      Alignment       =   1  'Right Justify
      BackColor       =   &H80000000&
      Caption         =   "T3"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   405
      Left            =   -285
      TabIndex        =   85
      Top             =   1320
      Width           =   585
   End
   Begin VB.Label lblT4 
      Alignment       =   1  'Right Justify
      BackColor       =   &H80000000&
      Caption         =   "T4"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   405
      Left            =   -285
      TabIndex        =   84
      Top             =   1800
      Width           =   585
   End
   Begin VB.Label Label1 
      Alignment       =   1  'Right Justify
      BackColor       =   &H80000000&
      Caption         =   "T5"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   405
      Left            =   -285
      TabIndex        =   83
      Top             =   2280
      Width           =   585
   End
   Begin VB.Label Label2 
      Alignment       =   1  'Right Justify
      BackColor       =   &H80000000&
      Caption         =   "T6"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   405
      Left            =   -285
      TabIndex        =   82
      Top             =   2760
      Width           =   585
   End
   Begin VB.Label Y 
      Caption         =   "Y"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   7080
      TabIndex        =   81
      Top             =   5520
      Width           =   495
   End
   Begin VB.Label Label5 
      Alignment       =   1  'Right Justify
      Caption         =   "X"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   4800
      TabIndex        =   80
      Top             =   5520
      Width           =   375
   End
   Begin VB.Label Label4 
      Caption         =   "Prob"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   3720
      TabIndex        =   79
      Top             =   120
      Width           =   495
   End
   Begin VB.Shape Progress 
      BackStyle       =   1  'Opaque
      FillColor       =   &H00FF0000&
      FillStyle       =   0  'Solid
      Height          =   30
      Left            =   240
      Top             =   5760
      Visible         =   0   'False
      Width           =   3795
   End
   Begin VB.Label Label3 
      Alignment       =   1  'Right Justify
      Caption         =   "Points"
      Height          =   255
      Left            =   2040
      TabIndex        =   78
      Top             =   4800
      Width           =   735
   End
   Begin VB.Label Iterations 
      Alignment       =   1  'Right Justify
      Caption         =   "Iterations"
      Height          =   255
      Left            =   360
      TabIndex        =   77
      Top             =   4800
      Width           =   735
   End
   Begin VB.Label lblF1 
      Alignment       =   2  'Center
      BackColor       =   &H80000004&
      Caption         =   "  f"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   3120
      TabIndex        =   75
      Top             =   120
      Width           =   375
   End
   Begin VB.Label lblE1 
      Alignment       =   2  'Center
      BackColor       =   &H80000004&
      Caption         =   " e"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   2640
      TabIndex        =   74
      Top             =   120
      Width           =   255
   End
   Begin VB.Label lblTheta1 
      Alignment       =   2  'Center
      BackColor       =   &H80000004&
      Caption         =   " theta"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   1200
      TabIndex        =   73
      Top             =   120
      Width           =   615
   End
   Begin VB.Label lblS1 
      Alignment       =   2  'Center
      BackColor       =   &H80000004&
      Caption         =   " s"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   720
      TabIndex        =   72
      Top             =   120
      Width           =   255
   End
   Begin VB.Label lblR1 
      Alignment       =   2  'Center
      BackColor       =   &H80000004&
      Caption         =   "  r"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   255
   End
   Begin VB.Menu mnuFile 
      Caption         =   "&File"
      Index           =   1
      Begin VB.Menu mnuNew 
         Caption         =   "&New"
         Index           =   1
      End
      Begin VB.Menu mnuOpen 
         Caption         =   "&Load IFS"
         Index           =   2
      End
      Begin VB.Menu mnuSaveAs 
         Caption         =   "&Save IFS"
         Index           =   4
      End
      Begin VB.Menu mnuExit 
         Caption         =   "E&xit"
         Index           =   7
      End
   End
   Begin VB.Menu MnuImage 
      Caption         =   "&Image"
      Begin VB.Menu mnuSaveGIF 
         Caption         =   "&Save GIF"
      End
      Begin VB.Menu mnuAnimate 
         Caption         =   "&Create Animation"
         Index           =   7
      End
   End
   Begin VB.Menu mnuSamples 
      Caption         =   "&Samples"
      Index           =   9
      Begin VB.Menu mnuSamplesList 
         Caption         =   "-"
         Index           =   0
      End
   End
   Begin VB.Menu mnuHelp 
      Caption         =   "&Help"
      Index           =   11
      Begin VB.Menu mnuAbout 
         Caption         =   "&About Random IFS"
         Index           =   12
      End
   End
End
Attribute VB_Name = "frmMain"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Option Explicit

Const HIDEPICTURE = False

Const pi = 3.14159
Const PaintWidth = 600
Const PaintHeight = 600
Private FileName
Private flgSettingsChanged

Dim ApplicationDir
Dim SamplesFileName() As String
Dim LoadedFileName
Dim whiteimage() As RGBTriplet
Dim FAKEIMAGE
Dim WHITEIMAGESET

Private Sub cmdRunInfinite_Click()
    RunTransform (False)
End Sub


Private Sub Form_Load()
    'Call CreateAssociation
    Call FillMenu
    
    ' this is reset later in the render function
    WHITEIMAGESET = False
    
    ' load the command line item
    'If (Command <> "") Then
        'MsgBox (Command)
    '    Call FileOpen(Command)
    '    Call RunTransform(False)
    'Else
        'Call RunTransform(False)
        Image1.Visible = True
        FAKEIMAGE = True
    'End If
End Sub

Private Sub Image2_Click()
    Dim i
    i = Int(Trim(TxtIterations)) + 1
    TxtIterations = i
    RunTransform (True)
End Sub


Private Sub Image3_Click()
    Dim i
    i = Int(Trim(TxtIterations)) - 1
    If (i < 0) Then i = 0
    TxtIterations = i
    RunTransform (True)
End Sub

Private Sub mnuAbout_Click(index As Integer)
    frmHelp.Show
    'frmHelp.Visible = True
End Sub

Private Sub mnuAnimate_Click(index As Integer)
    frmAnimate.Show
End Sub

Private Sub mnuSamplesList_Click(index As Integer)
    Dim FileName
    FileName = ApplicationDir & "\" & SamplesFileName(index)
    Dim rval
    rval = FileOpen(FileName)
    SetTitle (FileName)
    Call RunTransform(False)
    'Call RunTransform
End Sub


Private Sub SetTitle(FileName)
    frmMain.Caption = "IFS 2.0 - " & FileName
    'MsgBox (frmMain.Caption)
End Sub

Private Sub FillMenu()
    On Error Resume Next

    Dim i As Integer
    
    ' this is a global var
    'ApplicationDir = "z:\sourcecode\ifs2.0\samples"
    ApplicationDir = App.Path & "\samples"
    
    Call EmptySamplesMenu  'Clean before adding items
       
    Dim subdir, item, filecollect, FileName
    Dim FileIO As New FileSystemObject
    i = 1
   
   If Not (FileIO.FolderExists(ApplicationDir)) Then
     FileIO.CreateFolder (ApplicationDir)
     MsgBox (ApplicationDir & " did not exists so it was created.  You can copy IFS files into that dir to show up in the Samples menu.")
   Else
     Set subdir = FileIO.GetFolder(ApplicationDir)
     ' now list the subdirectories
     Set filecollect = subdir.Files
     
     For Each item In filecollect
         FileName = item.Name
         If (LCase(Right(FileName, 4)) = ".ifs") Then
             Load mnuSamplesList(i) ' Load new menu item
             mnuSamplesList(i).Caption = Left(item.Name, Len(FileName) - 4) ' Set captions for menu items
             
             ' this could be more efficient
             ReDim Preserve SamplesFileName(i)
             SamplesFileName(i) = FileName
             i = i + 1
         End If
     Next
     'mnuSamplesList(0).Visible = False ' This is the divider - make it invisible
    End If
End Sub
 
Private Sub EmptySamplesMenu() 'Empty the menu completely but leave the divider (created in design-time)-
    Dim i As Integer
    mnuSamplesList(0).Visible = True ' Make 'parent' menu item visible.
    For i = 1 To mnuSamplesList.ubound 'Remove items that were added in runtime
        Unload mnuSamplesList(i) ' But keep the divider that was created in design-time
    Next i
End Sub


Private Function CountTransforms()
    CountTransforms = 0
    
    If (Trim(txtR1) <> "" Or Trim(txtS1) <> "" Or Trim(txtTheta1) <> "" Or Trim(txtE1) <> "" Or Trim(txtF1) <> "") Then
        CountTransforms = CountTransforms + 1
    End If

    If (Trim(txtR2) <> "" Or Trim(txtS2) <> "" Or Trim(txtTheta2) <> "" Or Trim(txtE2) <> "" Or Trim(txtF2) <> "") Then
        CountTransforms = CountTransforms + 1
    End If

    If (Trim(txtR3) <> "" Or Trim(txtS3) <> "" Or Trim(txtTheta3) <> "" Or Trim(txtE3) <> "" Or Trim(txtF3) <> "") Then
        CountTransforms = CountTransforms + 1
    End If

    If (Trim(txtR4) <> "" Or Trim(txtS4) <> "" Or Trim(txtTheta4) <> "" Or Trim(txtE4) <> "" Or Trim(txtF4) <> "") Then
        CountTransforms = CountTransforms + 1
    End If

    If (Trim(txtR5) <> "" Or Trim(txtS5) <> "" Or Trim(txtTheta5) <> "" Or Trim(txtE5) <> "" Or Trim(txtF5) <> "") Then
        CountTransforms = CountTransforms + 1
    End If

    If (Trim(txtR6) <> "" Or Trim(txtS6) <> "" Or Trim(txtTheta6) <> "" Or Trim(txtE6) <> "" Or Trim(txtF6) <> "") Then
        CountTransforms = CountTransforms + 1
    End If
    If (Trim(txtR7) <> "" Or Trim(txtS7) <> "" Or Trim(txtTheta7) <> "" Or Trim(txtE7) <> "" Or Trim(txtF7) <> "") Then
        CountTransforms = CountTransforms + 1
    End If
    If (Trim(txtR8) <> "" Or Trim(txtS8) <> "" Or Trim(txtTheta8) <> "" Or Trim(txtE8) <> "" Or Trim(txtF8) <> "") Then
        CountTransforms = CountTransforms + 1
    End If
    If (Trim(txtR9) <> "" Or Trim(txtS9) <> "" Or Trim(txtTheta9) <> "" Or Trim(txtE9) <> "" Or Trim(txtF9) <> "") Then
        CountTransforms = CountTransforms + 1
    End If


End Function

'Private Sub RunTransform(Optional Iterations = 100000)
Public Sub RunTransform(Optional CountIterations = True, Optional QuickRender = False)
    On Error Resume Next
    
    Call InitializeTimers
    Call StartTimer(1, "Initialize")
    
    ' we start with the same seed so rerendering an image doesn't look different
    'Randomize (1000)
    RandRandomize
    
    ' This is for a fake image that is shown on startup
    If (FAKEIMAGE) Then
        Image1.Visible = False
        FAKEIMAGE = False
    End If
    
    Dim points, Iterations
    Dim z As Integer: Dim a As Integer
    Dim c As Long
    Dim r(10) As Single: Dim s(10) As Single
    Dim theta(10) As Single
    Dim e(10) As Single: Dim f(10) As Single
    Dim p(10) As Single: Dim phi(10) As Single
    Dim rcost(10) As Double: Dim scost(10) As Double
    Dim rsint(10) As Double: Dim ssint(10) As Double
    Dim ssinphi(10) As Double: Dim scosphi(10) As Double
    Dim X As Single: Dim Y As Single
    Dim t As Single
    Dim X1 As Single: Dim Y1 As Single
    Dim SX1 As Single, SX2 As Single, SY1 As Single, SY2 As Single
    Dim TotalProb As Single, currentProb As Single
    'Picture1.Scale
    

    'Call StartTimer(1, "Image Rendering")
    r(1) = Val(Trim(txtR1)): s(1) = Val(Trim(txtS1)): theta(1) = Val(Trim(txtTheta1))
    e(1) = Val(Trim(txtE1)): f(1) = Val(Trim(txtF1)): p(1) = Val(Trim(txtP1)): phi(1) = Val(Trim(txtPhi1))
    r(2) = Val(Trim(txtR2)): s(2) = Val(Trim(txtS2)): theta(2) = Val(Trim(txtTheta2))
    e(2) = Val(Trim(txtE2)): f(2) = Val(Trim(txtF2)): p(2) = Val(Trim(txtP2)): phi(2) = Val(Trim(txtPhi2))
    r(3) = Val(Trim(txtR3)): s(3) = Val(Trim(txtS3)): theta(3) = Val(Trim(txtTheta3))
    e(3) = Val(Trim(txtE3)): f(3) = Val(Trim(txtF3)): p(3) = Val(Trim(txtP3)): phi(3) = Val(Trim(txtPhi3))
    r(4) = Val(Trim(txtR4)): s(4) = Val(Trim(txtS4)): theta(4) = Val(Trim(txtTheta4))
    e(4) = Val(Trim(txtE4)): f(4) = Val(Trim(txtF4)): p(4) = Val(Trim(txtP4)): phi(4) = Val(Trim(txtPhi4))
    r(5) = Val(Trim(txtR5)): s(5) = Val(Trim(txtS5)): theta(5) = Val(Trim(txtTheta5))
    e(5) = Val(Trim(txtE5)): f(5) = Val(Trim(txtF5)): p(5) = Val(Trim(txtP5)): phi(5) = Val(Trim(txtPhi5))
    r(6) = Val(Trim(txtR6)): s(6) = Val(Trim(txtS6)): theta(6) = Val(Trim(txtTheta6))
    e(6) = Val(Trim(txtE6)): f(6) = Val(Trim(txtF6)): p(6) = Val(Trim(txtP6)): phi(6) = Val(Trim(TxtPhi6))
    r(7) = Val(Trim(txtR7)): s(7) = Val(Trim(txtS7)): theta(7) = Val(Trim(txtTheta7))
    e(7) = Val(Trim(txtE7)): f(7) = Val(Trim(txtF7)): p(7) = Val(Trim(txtP7)): phi(7) = Val(Trim(txtPhi7))
    r(8) = Val(Trim(txtR8)): s(8) = Val(Trim(txtS8)): theta(8) = Val(Trim(txtTheta8))
    e(8) = Val(Trim(txtE8)): f(8) = Val(Trim(txtF8)): p(8) = Val(Trim(txtP8)): phi(8) = Val(Trim(txtPhi8))
    r(9) = Val(Trim(txtR9)): s(9) = Val(Trim(txtS9)): theta(9) = Val(Trim(txtTheta9))
    e(9) = Val(Trim(txtE9)): f(9) = Val(Trim(txtF9)): p(9) = Val(Trim(txtP9)): phi(9) = Val(Trim(txtPhi9))
    
    ' get the scales
    SX1 = Val(Trim(txtX1)): SX2 = Val(Trim(txtX2))
    SY1 = Val(Trim(txtY1)): SY2 = Val(Trim(txtY2))
        
    ' sometimes it has trouble starting out
    Picture1.Scale (-1.02, 1.02)-(1.02, -1.02)
    If (SX2 > SX1 And SY2 > SY1) Then
        Picture1.Scale (SX1, SY2)-(SX2, SY1)
    End If
    
    ' hide the picture while rendering
    Picture1.Cls
    If (HIDEPICTURE) Then
        Picture1.Visible = False
    End If
    
    'a = Val(txtNumber)
    a = CountTransforms()
    'x1 = 0.5: y1 = 0.5
    
    ' These have been moved out of the function for faster processing later
    For z = 1 To 9
        rcost(z) = r(z) * Cos(theta(z) * pi / 180)
        rsint(z) = r(z) * Sin(theta(z) * pi / 180)
        
        ' this has been changed to use phi
        scosphi(z) = s(z) * Cos(phi(z) * pi / 180)
        ssinphi(z) = s(z) * Sin(phi(z) * pi / 180)
        
        scost(z) = s(z) * Cos(theta(z) * pi / 180)
        ssint(z) = s(z) * Sin(theta(z) * pi / 180)
    Next
    
    ' Get the total probability count
    TotalProb = p(1) + p(2) + p(3) + p(4) + p(5) + p(6) + p(7) + p(8) + p(9)
    
    If (Trim(TxtPoints) = "") Then
        TxtPoints = "10000"
    End If
    If (Trim(TxtIterations) = "") Then
        TxtIterations = "5"
    End If
    
    ' this is only used for random
    X1 = 0.5: Y1 = 0.5
    
    
    ' steps
    Dim step1 As Single, step2 As Single, step3 As Single, step4 As Single
    Dim step5 As Single, step6 As Single, step7 As Single, step8 As Single
    Dim step9 As Single
    step1 = p(1)
    step2 = step1 + p(2)
    step3 = step2 + p(3)
    step4 = step3 + p(4)
    step5 = step4 + p(5)
    step6 = step5 + p(6)
    step7 = step6 + p(7)
    step8 = step7 + p(8)
    step9 = step8 + p(9)
    
    ' for angles
    Dim adjustedpi, progresspoints
    adjustedpi = pi / 180
    points = Val(Trim(TxtPoints))

    If (QuickRender) Then
        points = points / 3
    End If
    
    ' this is the chunk for each progress bar redraw
    Dim progresssteps
    progresssteps = 2000
    progresspoints = 3800 / points * progresssteps

    If (CountIterations) Then
        Iterations = Val(Trim(TxtIterations))
    Else
        Iterations = 1
    End If
    
    'Call Stoptimer(1)
    'Call StartTimer(2, "Main Loop")
    
            ' faster image routine
            Dim bits_per_pixel As Integer
            Dim pixels() As RGBTriplet
            GetBitmapPixels Picture1, pixels, bits_per_pixel, True
            Dim PixelWidth, PixelHeight, PixelScaleX As Single, PixelScaleY As Single
            PixelWidth = UBound(pixels, 1) + 1
            PixelHeight = UBound(pixels, 2) + 1
            'PixelScaleX = Int(PixelWidth / (SX2 - SX1) * 1000) / 1000
            'PixelScaleY = Int(PixelHeight / (SY2 - SY1) * 1000) / 1000
            PixelScaleX = PixelWidth / (SX2 - SX1)
            PixelScaleY = PixelHeight / (SY2 - SY1)
            Dim black_pixel As RGBTriplet
            black_pixel.rgbRed = 0
            black_pixel.rgbGreen = 0
            black_pixel.rgbBlue = 0
           
            'clear the old image
            If (WHITEIMAGESET) Then
               pixels = whiteimage
            Else
                Dim white_pixel As RGBTriplet
                white_pixel.rgbRed = 255
                white_pixel.rgbGreen = 255
                white_pixel.rgbBlue = 255
                WHITEIMAGESET = True
                Dim j As Integer, k As Integer
                For j = 0 To PixelWidth - 1
                    For k = 0 To PixelHeight - 1
                        pixels(j, k) = white_pixel
                    Next
                Next
                whiteimage = pixels
            End If
    
    
    Dim i, x0, y0
    If False And (Iterations = 0) Then
        Progress.Visible = True
        For x0 = 1 To PaintWidth
            Progress.Width = c * progresspoints

            For y0 = 1 To PaintHeight
                Picture1.PSet (x0 / PaintWidth, y0 / PaintWidth)
            Next
        Next
        Progress.Visible = False
    Else
            Progress.Visible = True
            Dim cc
            For c = 1 To Int(points / progresssteps)
                'Call StartTimer(8, "-ProgressBar")
                Progress.Width = c * progresspoints
                'Call Stoptimer(8)
                For cc = 1 To progresssteps
                
                    'Call StartTimer(3, "-Random Seed Points")
                    ' use a different algorithm if not random
                    '(ignore the number of iterations)
                    If (CountIterations) Then
                        X1 = Rand
                        Y1 = Rand
                        X = X1: Y = Y1
                    End If
                    'Call Stoptimer(3)
                    
                    
                    'Call StartTimer(8, "-ProgressBar")
                    'If (c Mod 2000 = 0) Then
                        
                    'End If
                    'Call Stoptimer(8)
                    
                    For i = 1 To Iterations
                        Call StartTimer(4, "-Calculate Probabilities")
                        ' This is what makes the probabilities work
                        

                        
                            If (TotalProb = 0) Then
                                ' equal probabilities
                                z = Int(a * Rand + 1)
                            Else
                                'Call StartTimer(9, "-Calculate Probabilities (Rnd)")
                                currentProb = (TotalProb * Rand)
                                'Call Stoptimer(9)
                                
                                If (currentProb < step1) Then
                                    z = 1
                                Else
                                    'Call StartTimer(10, "-Calculate Probabilities (Step Tree)")
                                    If (currentProb < step2) Then
                                        z = 2
                                    Else
                                        If (currentProb < step3) Then
                                            z = 3
                                        Else
                                            If (currentProb < step4) Then
                                                z = 4
                                            Else
                                                If (currentProb < step5) Then
                                                    z = 5
                                                Else
                                                    If (currentProb < step6) Then
                                                        z = 6
                                                    Else
                                                        If (currentProb < step7) Then
                                                            z = 7
                                                        Else
                                                            If (currentProb < step8) Then
                                                                z = 8
                                                            Else
                                                                z = 9
                                                            End If
                                                        End If
                                                    End If
                                                End If
                                            End If
                                        End If
                                    End If
                                    'Call Stoptimer(10)
                                End If
                            End If
                            'Call Stoptimer(4)
                            
                            ' The upper functions have been out of the loop\
                            't = theta(z) * adjustedpi
                            'X = (r(z) * X1 * Cos(t)) - (s(z) * Y1 * Sin(t)) + e(z)
                            'Y = (r(z) * X1 * Sin(t)) + (s(z) * Y1 * Cos(t)) + f(z)
                            'X = X1 * rcost(z) - Y1 * ssint(z) + e(z)
                            'Y = X1 * rsint(z) + Y1 * scost(z) + f(z)
                            'Call StartTimer(6, "-Core Math")
                                X = X1 * rcost(z) - Y1 * ssinphi(z) + e(z)
                                Y = X1 * rsint(z) + Y1 * scosphi(z) + f(z)
                        X1 = X: Y1 = Y
                        'Call Stoptimer(6)
                    Next
                    
                    
                    'Call StartTimer(7, "-Draw Point")
                    ' FASTER Image Routine
                    'Picture1.PSet (X, Y)
                    'If (X > SX1) Then
                        'If (X < SX2) Then
                            'If (Y > SY1) Then
                                'If (Y < SY2) Then
                                    pixels(Int((X - SX1) * PixelScaleX), Int((SY2 - Y) * PixelScaleY)) = black_pixel
                                'End If
                            'End If
                        'End If
                    'End If
                    'Call Stoptimer(7)
                Next cc
            Next c
            Progress.Visible = False
    End If
    
    ' hide the picture while rendering
    If (HIDEPICTURE) Then
        Picture1.Visible = True
    End If
    
    ' FASTER Image Routine
    ' Display the image.
    SetBitmapPixels Picture1, bits_per_pixel, pixels
    Picture1.Picture = Picture1.Image
    
    'Call Stoptimer(1)
    'Call GetTimingResults
End Sub


'Private Sub RunTransform(Optional Iterations = 100000)
Private Sub RunTransform_old(Optional CountIterations = True, Optional QuickRender = False)
    On Error Resume Next

    Dim points, Iterations
    Dim z As Integer: Dim a As Integer
    Dim c As Long
    Dim r(10) As Single: Dim s(10) As Single
    Dim theta(10) As Single
    Dim e(10) As Single: Dim f(10) As Single
    Dim p(10) As Single: Dim phi(10) As Single
    Dim rcost(10) As Double: Dim scost(10) As Double
    Dim rsint(10) As Double: Dim ssint(10) As Double
    Dim ssinphi(10) As Double: Dim scosphi(10) As Double
    Dim X As Single: Dim Y As Single
    Dim t As Single
    Dim X1 As Single: Dim Y1 As Single
    Dim SX1, SX2, SY1, SY2
    Dim TotalProb, currentProb
    'Picture1.Scale
    
    Call InitializeTimers
    Call StartTimer(1, "Load Values")
    r(1) = Val(Trim(txtR1)): s(1) = Val(Trim(txtS1)): theta(1) = Val(Trim(txtTheta1))
    e(1) = Val(Trim(txtE1)): f(1) = Val(Trim(txtF1)): p(1) = Val(Trim(txtP1)): phi(1) = Val(Trim(txtPhi1))
    r(2) = Val(Trim(txtR2)): s(2) = Val(Trim(txtS2)): theta(2) = Val(Trim(txtTheta2))
    e(2) = Val(Trim(txtE2)): f(2) = Val(Trim(txtF2)): p(2) = Val(Trim(txtP2)): phi(2) = Val(Trim(txtPhi2))
    r(3) = Val(Trim(txtR3)): s(3) = Val(Trim(txtS3)): theta(3) = Val(Trim(txtTheta3))
    e(3) = Val(Trim(txtE3)): f(3) = Val(Trim(txtF3)): p(3) = Val(Trim(txtP3)): phi(3) = Val(Trim(txtPhi3))
    r(4) = Val(Trim(txtR4)): s(4) = Val(Trim(txtS4)): theta(4) = Val(Trim(txtTheta4))
    e(4) = Val(Trim(txtE4)): f(4) = Val(Trim(txtF4)): p(4) = Val(Trim(txtP4)): phi(4) = Val(Trim(txtPhi4))
    r(5) = Val(Trim(txtR5)): s(5) = Val(Trim(txtS5)): theta(5) = Val(Trim(txtTheta5))
    e(5) = Val(Trim(txtE5)): f(5) = Val(Trim(txtF5)): p(5) = Val(Trim(txtP5)): phi(5) = Val(Trim(txtPhi5))
    r(6) = Val(Trim(txtR6)): s(6) = Val(Trim(txtS6)): theta(6) = Val(Trim(txtTheta6))
    e(6) = Val(Trim(txtE6)): f(6) = Val(Trim(txtF6)): p(6) = Val(Trim(txtP6)): phi(6) = Val(Trim(TxtPhi6))
    r(7) = Val(Trim(txtR7)): s(7) = Val(Trim(txtS7)): theta(7) = Val(Trim(txtTheta7))
    e(7) = Val(Trim(txtE7)): f(7) = Val(Trim(txtF7)): p(7) = Val(Trim(txtP7)): phi(7) = Val(Trim(txtPhi7))
    r(8) = Val(Trim(txtR8)): s(8) = Val(Trim(txtS8)): theta(8) = Val(Trim(txtTheta8))
    e(8) = Val(Trim(txtE8)): f(8) = Val(Trim(txtF8)): p(8) = Val(Trim(txtP8)): phi(8) = Val(Trim(txtPhi8))
    r(9) = Val(Trim(txtR9)): s(9) = Val(Trim(txtS9)): theta(9) = Val(Trim(txtTheta9))
    e(9) = Val(Trim(txtE9)): f(9) = Val(Trim(txtF9)): p(9) = Val(Trim(txtP9)): phi(9) = Val(Trim(txtPhi9))
    
    ' get the scales
    SX1 = Val(Trim(txtX1)): SX2 = Val(Trim(txtX2))
    SY1 = Val(Trim(txtY1)): SY2 = Val(Trim(txtY2))
    
    Picture1.Cls
    
    ' hide the picture while rendering
    If (HIDEPICTURE) Then
        Picture1.Visible = False
    End If
    
    'Picture1.Scale (-0.02, 1.02)-(1.02, -0.02)
    If (SX2 > SX1 And SY2 > SY1) Then
        Picture1.Scale (-1.02, 1.02)-(1.02, -1.02)
        Picture1.Scale (SX1, SY2)-(SX2, SY1)
    Else
        Picture1.Scale (-1.02, 1.02)-(1.02, -1.02)
    End If
    
    'a = Val(txtNumber)
    a = CountTransforms()
    'x1 = 0.5: y1 = 0.5
    
    ' These have been moved out of the function for faster processing later
    For z = 1 To 9
        rcost(z) = r(z) * Cos(theta(z) * pi / 180)
        rsint(z) = r(z) * Sin(theta(z) * pi / 180)
        
        ' this has been changed to use phi
        scosphi(z) = s(z) * Cos(phi(z) * pi / 180)
        ssinphi(z) = s(z) * Sin(phi(z) * pi / 180)
        
        scost(z) = s(z) * Cos(theta(z) * pi / 180)
        ssint(z) = s(z) * Sin(theta(z) * pi / 180)
    Next
    
    ' Get the total probability count
    TotalProb = p(1) + p(2) + p(3) + p(4) + p(5) + p(6) + p(7) + p(8) + p(9)
    
    If (Trim(TxtPoints) = "") Then
        TxtPoints = "10000"
    End If
    If (Trim(TxtIterations) = "") Then
        TxtIterations = "5"
    End If
    
    ' this is only used for random
    X1 = 0.5: Y1 = 0.5
    
    
    ' steps
    Dim step1, step2, step3, step4, step5, step6, step7, step8, step9
    step1 = p(1)
    step2 = step1 + p(2)
    step3 = step2 + p(3)
    step4 = step3 + p(4)
    step5 = step4 + p(5)
    step6 = step5 + p(6)
    step7 = step6 + p(7)
    step8 = step7 + p(8)
    step9 = step8 + p(9)
    
    ' for angles
    Dim adjustedpi, progresspoints
    adjustedpi = pi / 180
    points = Val(Trim(TxtPoints))

    If (QuickRender) Then
        points = points / 3
    End If
    
    progresspoints = 3800 / points

    If (CountIterations) Then
        Iterations = Val(Trim(TxtIterations))
    Else
        Iterations = 1
    End If
    
    Call Stoptimer(1)

    'Call StartTimer(2, "Main Loop")
    
    Dim i, x0, y0
    If (Iterations = 0) Then
        For x0 = 1 To PaintWidth
            For y0 = 1 To PaintHeight
                Picture1.PSet (x0 / PaintWidth, y0 / PaintWidth)
            Next
        Next
    Else
            Progress.Visible = True
            For c = 1 To Int(points)
            
                Call StartTimer(3, "-Random Seed Points")
                ' use a different algorithm if not random
                '(ignore the number of iterations)
                If (CountIterations) Then
                    X1 = Rand
                    Y1 = Rand
                End If
                Call Stoptimer(3)
                
                
                Call StartTimer(8, "-ProgressBar")
                If (c Mod 1000 = 0) Then
                    Progress.Width = c * progresspoints
                End If
                Call Stoptimer(8)
                
                For i = 1 To Iterations
                    Call StartTimer(4, "-Calculate Probabilities")
                    ' This is what makes the probabilities work
                    If (TotalProb = 0) Then
                        ' equal probabilities
                        z = Int(a * Rand + 1)
                    Else
                        Call StartTimer(9, "-Calculate Probabilities (Rnd)")
                        currentProb = (TotalProb * Rand)
                        Call Stoptimer(9)
                        
                        If (currentProb < step1) Then
                            z = 1
                        Else
                            Call StartTimer(10, "-Calculate Probabilities (Step Tree)")
                            If (currentProb < step2) Then
                                z = 2
                            Else
                                If (currentProb < step3) Then
                                    z = 3
                                Else
                                    If (currentProb < step4) Then
                                        z = 4
                                    Else
                                        If (currentProb < step5) Then
                                            z = 5
                                        Else
                                            If (currentProb < step6) Then
                                                z = 6
                                            Else
                                                If (currentProb < step7) Then
                                                    z = 7
                                                Else
                                                    If (currentProb < step8) Then
                                                        z = 8
                                                    Else
                                                        z = 9
                                                    End If
                                                End If
                                            End If
                                        End If
                                    End If
                                End If
                            End If
                            Call Stoptimer(10)
                        End If
                    End If
                    Call Stoptimer(4)
                    
                    ' The upper functions have been out of the loop\
                    't = theta(z) * adjustedpi
                    'X = (r(z) * X1 * Cos(t)) - (s(z) * Y1 * Sin(t)) + e(z)
                    'Y = (r(z) * X1 * Sin(t)) + (s(z) * Y1 * Cos(t)) + f(z)
                    'X = X1 * rcost(z) - Y1 * ssint(z) + e(z)
                    'Y = X1 * rsint(z) + Y1 * scost(z) + f(z)
                    Call StartTimer(6, "-Core Math")
                    X = X1 * rcost(z) - Y1 * ssint(z) + e(z)
                    Y = X1 * rsint(z) + Y1 * scost(z) + f(z)
                    X1 = X: Y1 = Y
                    Call Stoptimer(6)
                Next
                Call StartTimer(7, "-Draw Point")
                Picture1.PSet (X, Y)
                Call Stoptimer(7)
            Next c
            Progress.Visible = False
    End If
    
    ' hide the picture while rendering
    If (HIDEPICTURE) Then
        Picture1.Visible = True
    End If
    
    'Call Stoptimer(2)
    
    Call GetTimingResults
End Sub


Private Sub cmdRun_Click()
    RunTransform
End Sub

Private Sub mnuExit_Click(index As Integer)
    If (TrySave()) Then
        Unload Me
    End If
End Sub


Private Sub mnuNew_Click(index As Integer)
    If (TrySave()) Then
        Call ClearFLDS
    End If
End Sub

Public Sub ClearFLDS()
        Picture1.Cls
        txtR1 = "": txtS1 = "": txtTheta1 = ""
        txtE1 = "": txtF1 = "": txtP1 = "": txtPhi1 = ""
        txtR2 = "": txtS2 = "": txtTheta2 = ""
        txtE2 = "": txtF2 = "": txtP2 = "": txtPhi2 = ""
        txtR3 = "": txtS3 = "": txtTheta3 = ""
        txtE3 = "": txtF3 = "": txtP3 = "": txtPhi3 = ""
        txtR4 = "": txtS4 = "": txtTheta4 = ""
        txtE4 = "": txtF4 = "": txtP4 = "": txtPhi4 = ""
        txtR5 = "": txtS5 = "": txtTheta5 = ""
        txtE5 = "": txtF5 = "": txtP5 = "": txtPhi5 = ""
        txtR6 = "": txtS6 = "": txtTheta6 = ""
        txtE6 = "": txtF6 = "": txtP6 = "": TxtPhi6 = ""
        txtR7 = "": txtS7 = "": txtTheta7 = ""
        txtE7 = "": txtF7 = "": txtP7 = "": txtPhi7 = ""
        txtR8 = "": txtS8 = "": txtTheta8 = ""
        txtE8 = "": txtF8 = "": txtP8 = "": txtPhi8 = ""
        txtR9 = "": txtS9 = "": txtTheta9 = ""
        txtE9 = "": txtF9 = "": txtP9 = "": txtPhi9 = ""
        TxtIterations = "5"
        TxtPoints = "10000"
End Sub

Private Function TrySave()
    Dim userButton
    TrySave = True

    If (flgSettingsChanged) Then
        userButton = MsgBox("Would you like to save these settings first?", vbYesNoCancel, "NEW")
        Select Case userButton
            Case vbYes
                If (FileName = "") Then
                    If (FileSaveAs()) Then
                        TrySave = True
                    Else
                        TrySave = False
                    End If
                Else
                    If (FileSave(FileName)) Then
                        TrySave = True
                    Else
                        TrySave = False
                    End If
                End If
            Case vbNo
                TrySave = True
            Case vbCancel
                TrySave = False
        End Select
    End If
End Function

Private Sub mnuOpen_Click(index As Integer)
    Dim rval
    rval = FileOpen()
    Call RunTransform(False)
End Sub

Private Function FileOpen(Optional sFile = "")

Dim ifsarray(14, 7), rval
      
    If (sFile = "") Then
        sFile = GetFileName()
    End If
    
    'On Error Resume Next
    
    If (sFile <> "") Then
        Call SetTitle(sFile)
       
        rval = LoadFileIntoArray(sFile, ifsarray)
        rval = LoadArrayIntoFields(ifsarray)
                
        FileOpen = True
    Else
        FileOpen = False
    End If
End Function

Private Function loadfile(FileName)
    Dim TextFile, TextBuffer, i
    Dim FileIO As New FileSystemObject
    Dim objFile, objTS

    If (FileIO.FileExists(FileName)) Then
        ' This is code that should be faster...
        Set objFile = FileIO.GetFile(FileName)
        Set objTS = objFile.OpenAsTextStream(ForReading, TristateFalse)
        loadfile = objTS.Read(objFile.Size)
        Set objTS = Nothing
        Set objFile = Nothing
    End If
End Function

Private Sub mnuSave_Click(index As Integer)
    Dim rval
    
    If (FileName = "") Then
        rval = FileSaveAs()
    Else
        rval = FileSave(FileName)
    End If
End Sub

Private Function FileSave(FullFileName)
    Dim fileData
    fileData = txtR1 & "|" & txtS1 & "|" & txtTheta1 & "|" & txtE1 & "|" & txtF1 & "|" & txtP1 & "|" & txtPhi1 & vbCrLf
    fileData = fileData & txtR2 & "|" & txtS2 & "|" & txtTheta2 & "|" & txtE2 & "|" & txtF2 & "|" & txtP2 & "|" & txtPhi2 & vbCrLf
    fileData = fileData & txtR3 & "|" & txtS3 & "|" & txtTheta3 & "|" & txtE3 & "|" & txtF3 & "|" & txtP3 & "|" & txtPhi3 & vbCrLf
    fileData = fileData & txtR4 & "|" & txtS4 & "|" & txtTheta4 & "|" & txtE4 & "|" & txtF4 & "|" & txtP4 & "|" & txtPhi4 & vbCrLf
    fileData = fileData & txtR5 & "|" & txtS5 & "|" & txtTheta5 & "|" & txtE5 & "|" & txtF5 & "|" & txtP5 & "|" & txtPhi5 & vbCrLf
    fileData = fileData & txtR6 & "|" & txtS6 & "|" & txtTheta6 & "|" & txtE6 & "|" & txtF6 & "|" & txtP6 & "|" & TxtPhi6 & vbCrLf
    fileData = fileData & TxtIterations & vbCrLf & TxtPoints & vbCrLf
    fileData = fileData & txtX1 & "|" & txtX2 & "|" & txtY1 & "|" & txtY2 & vbCrLf
    
    fileData = fileData & txtR7 & "|" & txtS7 & "|" & txtTheta7 & "|" & txtE7 & "|" & txtF7 & "|" & txtP7 & "|" & txtPhi7 & vbCrLf
    fileData = fileData & txtR8 & "|" & txtS8 & "|" & txtTheta8 & "|" & txtE8 & "|" & txtF8 & "|" & txtP8 & "|" & txtPhi8 & vbCrLf
    fileData = fileData & txtR9 & "|" & txtS9 & "|" & txtTheta9 & "|" & txtE9 & "|" & txtF9 & "|" & txtP9 & "|" & txtPhi9 & vbCrLf
    
    ' this is to just encrypt the data so it downloads better...
    fileData = Crypt1(fileData, "a")
    
    Dim TextFile
    Dim FileIO As New FileSystemObject
    'Set FileIO = Server.CreateObject("Scripting.FileSystemObject")
    Set TextFile = FileIO.OpenTextFile(FullFileName, 2, True)
    TextFile.Write (fileData)
    TextFile.Close
    Set TextFile = Nothing
    
    FileSave = True
    flgSettingsChanged = False
End Function

Private Sub mnuSaveAs_Click(index As Integer)
    Dim rval
    rval = FileSaveAs()
End Sub

Private Function FileSaveAs(Optional SaveGIFImage = False)
    Dim sFile As String
    Dim rval

    Dim File As stcFileStruct
    '// fill values (not required)
    File.strDialogtitle = "Save As"
    File.strFilter = "Text Files *.ifs|*.ifs" '// use same format asCommonDialog Control
    ShowSaveDialog File
    sFile = File.strFileName
    
    If Not LCase(Right(sFile, 4)) = ".ifs" Then
        sFile = sFile & ".ifs"
    End If

    If (sFile <> "") Then
        'MsgBox ("Save As " & sFile)
        rval = FileSave(sFile)
        
        If (SaveGIFImage) Then
            Call SaveGIF(sFile)
        End If
        
        FileSaveAs = rval
    Else
        FileSaveAs = False
    End If
End Function

Private Sub mnuSaveGIF_Click()
    Dim sFile As String, sTempFile As String
    Dim rval

    Dim File As stcFileStruct
    '// fill values (not required)
    File.strDialogtitle = "Save Image"
    'File.strFilter = "JPG Images *.jpg|*.jpg" '// use same format asCommonDialog Control
    File.strFilter = "GIF Images *.gif|*.gif" '// use same format asCommonDialog Control
    ShowSaveDialog File
    sFile = File.strFileName
      
    Call SaveGIF(sFile)
End Sub

Public Sub SaveGIF(sFile)
    'On Error GoTo SAVEJPGERR
    sFile = Replace(LCase(sFile), ".ifs", "")
    If Not LCase(Right(sFile, 4)) = ".gif" Then
        sFile = sFile & ".gif"
    End If
    
    Dim sTempFile
    If (sFile <> "") Then
        'Save a BMP file first
        'sTempFile = Replace(LCase(sFile), ".gif", ".bmp")
        sTempFile = "IFSTemp.bmp"
        SavePicture Picture1.Image, sTempFile

        Dim ImageObj As New ImageFx.CImageObj
        ImageObj.SetCode ("IMAGEFX989888")
        ImageObj.Load (sTempFile)
        ImageObj.JpegQuality = 95
        ImageObj.Interpolation = 4
        'ImageObj.JpegProgressive = 1
        'ImageObj.Resize NewWidth * 100, NewHeight * 100
        ImageObj.Save (sFile)
        Set ImageObj = Nothing
                   
        'Remove temporary file
        Kill sTempFile
    End If
    Exit Sub
    
SAVEJPGERR:
    MsgBox ("An error occurred trying to save the JPG image.  You may not have the library installed.")
End Sub

Private Sub mnuBMP_Click(index As Integer)
    Dim sFile As String
    Dim rval

    Dim File As stcFileStruct
    '// fill values (not required)
    File.strDialogtitle = "Save Image"
    File.strFilter = "BMP Images *.bmp|*.bmp" '// use same format asCommonDialog Control
    ShowSaveDialog File
    sFile = File.strFileName
    
    If Not LCase(Right(sFile, 4)) = ".bmp" Then
        sFile = sFile & ".bmp"
    End If

    Call SaveBMP(sFile)
End Sub

Public Function SaveBMP(sFile)
    If (sFile <> "") Then
        'MsgBox ("Save As " & sFile)
        SavePicture Picture1.Image, sFile
        'MsgBox (sFile)
    End If
End Function

Private Sub txtE1_Change()
    flgSettingsChanged = True
End Sub

Private Sub txtE2_Change()
    flgSettingsChanged = True
End Sub

Private Sub txtE3_Change()
    flgSettingsChanged = True
End Sub

Private Sub txtE4_Change()
    flgSettingsChanged = True
End Sub

Private Sub txtE5_Change()
    flgSettingsChanged = True
End Sub

Private Sub txtE6_Change()
    flgSettingsChanged = True
End Sub
Private Sub txtE7_Change()
    flgSettingsChanged = True
End Sub

Private Sub txtE8_Change()
    flgSettingsChanged = True
End Sub

Private Sub txtE9_Change()
    flgSettingsChanged = True
End Sub

Private Sub txtF1_Change()
    flgSettingsChanged = True
End Sub

Private Sub txtF2_Change()
    flgSettingsChanged = True
End Sub

Private Sub txtF3_Change()
    flgSettingsChanged = True
End Sub

Private Sub txtF4_Change()
    flgSettingsChanged = True
End Sub

Private Sub txtF5_Change()
    flgSettingsChanged = True
End Sub

Private Sub txtF6_Change()
    flgSettingsChanged = True
End Sub

Private Sub txtF7_Change()
    flgSettingsChanged = True
End Sub

Private Sub txtF8_Change()
    flgSettingsChanged = True
End Sub

Private Sub txtF9_Change()
    flgSettingsChanged = True
End Sub

Private Sub TxtIterations_Change()
    flgSettingsChanged = True
End Sub

Private Sub TxtPoints_Change()
    flgSettingsChanged = True
End Sub

Private Sub txtR1_Change()
    flgSettingsChanged = True
End Sub

Private Sub txtR2_Change()
    flgSettingsChanged = True
End Sub

Private Sub txtR3_Change()
    flgSettingsChanged = True
End Sub

Private Sub txtR4_Change()
    flgSettingsChanged = True
End Sub

Private Sub txtR5_Change()
    flgSettingsChanged = True
End Sub

Private Sub txtR6_Change()
    flgSettingsChanged = True
End Sub

Private Sub txtR7_Change()
    flgSettingsChanged = True
End Sub

Private Sub txtR8_Change()
    flgSettingsChanged = True
End Sub

Private Sub txtR9_Change()
    flgSettingsChanged = True
End Sub
Private Sub txtS1_Change()
    flgSettingsChanged = True
End Sub

Private Sub txtS2_Change()
    flgSettingsChanged = True
End Sub

Private Sub txtS3_Change()
    flgSettingsChanged = True
End Sub

Private Sub txtS4_Change()
    flgSettingsChanged = True
End Sub

Private Sub txtS5_Change()
    flgSettingsChanged = True
End Sub

Private Sub txtS6_Change()
    flgSettingsChanged = True
End Sub

Private Sub txtS7_Change()
    flgSettingsChanged = True
End Sub

Private Sub txtS8_Change()
    flgSettingsChanged = True
End Sub

Private Sub txtS9_Change()
    flgSettingsChanged = True
End Sub
Private Sub txtTheta1_Change()
    flgSettingsChanged = True
End Sub

Private Sub txtTheta2_Change()
    flgSettingsChanged = True
End Sub

Private Sub txtTheta3_Change()
    flgSettingsChanged = True
End Sub

Private Sub txtTheta4_Change()
    flgSettingsChanged = True
End Sub

Private Sub txtTheta5_Change()
    flgSettingsChanged = True
End Sub

Private Sub txtTheta6_Change()
    flgSettingsChanged = True
End Sub

Private Sub txtTheta7_Change()
    flgSettingsChanged = True
End Sub

Private Sub txtTheta8_Change()
    flgSettingsChanged = True
End Sub

Private Sub txtTheta9_Change()
    flgSettingsChanged = True
End Sub
Private Sub txtP1_Change()
    flgSettingsChanged = True
End Sub

Private Sub txtP2_Change()
    flgSettingsChanged = True
End Sub

Private Sub txtP3_Change()
    flgSettingsChanged = True
End Sub

Private Sub txtP4_Change()
    flgSettingsChanged = True
End Sub

Private Sub txtP5_Change()
    flgSettingsChanged = True
End Sub

Private Sub txtP6_Change()
    flgSettingsChanged = True
End Sub

Private Sub txtP7_Change()
    flgSettingsChanged = True
End Sub

Private Sub txtP8_Change()
    flgSettingsChanged = True
End Sub

Private Sub txtP9_Change()
    flgSettingsChanged = True
End Sub
Private Sub txtPhi1_Change()
    flgSettingsChanged = True
End Sub

Private Sub txtPhi2_Change()
    flgSettingsChanged = True
End Sub

Private Sub txtPhi3_Change()
    flgSettingsChanged = True
End Sub

Private Sub txtPhi4_Change()
    flgSettingsChanged = True
End Sub

Private Sub txtPhi5_Change()
    flgSettingsChanged = True
End Sub

Private Sub txtPhi6_Change()
    flgSettingsChanged = True
End Sub

Private Sub txtPhi7_Change()
    flgSettingsChanged = True
End Sub

Private Sub txtPhi8_Change()
    flgSettingsChanged = True
End Sub

Private Sub txtPhi9_Change()
    flgSettingsChanged = True
End Sub


Public Function LoadFileIntoArray(FileName, ByRef vals)
    Dim fileData, lines() As String, i, j
    Dim fields1() As String, fields2() As String, fields3() As String, fields4() As String, fields5() As String, fields6() As String, fields7() As String, fields8() As String, fields9() As String, fields10() As String, fields11() As String
    Dim Iterations, points

    fileData = loadfile(FileName)
    fileData = Crypt1(fileData, "a")

    On Error Resume Next
    lines = Split(fileData, vbCrLf)
    If (UBound(lines) > 0) Then
        
        fields1 = Split(lines(0), "|")
        fields2 = Split(lines(1), "|")
        fields3 = Split(lines(2), "|")
        fields4 = Split(lines(3), "|")
        fields5 = Split(lines(4), "|")
        fields6 = Split(lines(5), "|")
                    
        vals(1, 0) = fields1(0): vals(1, 1) = fields1(1): vals(1, 2) = fields1(2)
        vals(1, 3) = fields1(3): vals(1, 4) = fields1(4): vals(1, 5) = fields1(5)
        If (UBound(fields1) = 6) Then
            vals(1, 6) = fields1(6)
        Else
            vals(1, 6) = fields1(2)
        End If
        
        vals(2, 0) = fields2(0): vals(2, 1) = fields2(1): vals(2, 2) = fields2(2)
        vals(2, 3) = fields2(3): vals(2, 4) = fields2(4): vals(2, 5) = fields2(5)
        If (UBound(fields2) = 6) Then
            vals(2, 6) = fields2(6)
        Else
            vals(2, 6) = fields2(2)
        End If
        
        vals(3, 0) = fields3(0): vals(3, 1) = fields3(1): vals(3, 2) = fields3(2)
        vals(3, 3) = fields3(3): vals(3, 4) = fields3(4): vals(3, 5) = fields3(5)
        If (UBound(fields3) = 6) Then
            vals(3, 6) = fields3(6)
        Else
            vals(3, 6) = fields3(2)
        End If
                                          
        vals(4, 0) = fields4(0): vals(4, 1) = fields4(1): vals(4, 2) = fields4(2)
        vals(4, 3) = fields4(3): vals(4, 4) = fields4(4): vals(4, 5) = fields4(5)
        If (UBound(fields4) = 6) Then
            vals(4, 6) = fields4(6)
        Else
            vals(4, 6) = fields4(2)
        End If
                                          
        vals(5, 0) = fields5(0): vals(5, 1) = fields5(1): vals(5, 2) = fields5(2)
        vals(5, 3) = fields5(3): vals(5, 4) = fields5(4): vals(5, 5) = fields5(5)
        If (UBound(fields5) = 6) Then
            vals(5, 6) = fields5(6)
        Else
            vals(5, 6) = fields5(2)
        End If
                                          
        vals(6, 0) = fields6(0): vals(6, 1) = fields6(1): vals(6, 2) = fields6(2)
        vals(6, 3) = fields6(3): vals(6, 4) = fields6(4): vals(6, 5) = fields6(5)
        If (UBound(fields6) = 6) Then
            vals(6, 6) = fields6(6)
        Else
            vals(6, 6) = fields6(2)
        End If
                                                                                                                                      
        If (lines(6) <> "") Then
            vals(7, 0) = lines(6)
        End If
        If (lines(7) <> "") Then
            vals(8, 0) = lines(7)
        End If
                    
        ' load in the x and y coordinates.
        If (lines(8) <> "") Then
            fields7 = Split(lines(8), "|")
            vals(0, 0) = fields7(0)
            vals(0, 1) = fields7(1)
            vals(0, 2) = fields7(2)
            vals(0, 3) = fields7(3)
        End If
    
        ' this is cooky...but new transformations were added to the file format...just to
        ' support the old format, they were added to the end.
        If (lines(9) <> "") Then
            fields9 = Split(lines(9), "|")
            vals(9, 0) = fields9(0): vals(9, 1) = fields9(1): vals(9, 2) = fields9(2)
            vals(9, 3) = fields9(3): vals(9, 4) = fields9(4): vals(9, 5) = fields9(5): vals(9, 6) = fields9(6)
        End If
        If (UBound(lines) > 9) Then
            If (lines(10) <> "") Then
                fields10 = Split(lines(10), "|")
                vals(10, 0) = fields10(0): vals(10, 1) = fields10(1): vals(10, 2) = fields10(2)
                vals(10, 3) = fields10(3): vals(10, 4) = fields10(4): vals(10, 5) = fields10(5): vals(10, 6) = fields10(6)
            End If
            If (lines(11) <> "") Then
                fields11 = Split(lines(11), "|")
                vals(11, 0) = fields11(0): vals(11, 1) = fields11(1): vals(11, 2) = fields11(2)
                vals(11, 3) = fields11(3): vals(11, 4) = fields11(4): vals(11, 5) = fields11(5): vals(11, 6) = fields11(6)
            End If
        End If
    End If
End Function

Public Function LoadArrayIntoFields(ByVal vals)
        Call ClearFLDS
        
        flgSettingsChanged = False
        Picture1.Cls


        txtR1 = vals(1, 0): txtS1 = vals(1, 1): txtTheta1 = vals(1, 2)
        txtE1 = vals(1, 3): txtF1 = vals(1, 4): txtP1 = vals(1, 5)
        txtPhi1 = vals(1, 6)
        
        txtR2 = vals(2, 0): txtS2 = vals(2, 1): txtTheta2 = vals(2, 2)
        txtE2 = vals(2, 3): txtF2 = vals(2, 4): txtP2 = vals(2, 5)
        txtPhi2 = vals(2, 6)
        
        txtR3 = vals(3, 0): txtS3 = vals(3, 1): txtTheta3 = vals(3, 2)
        txtE3 = vals(3, 3): txtF3 = vals(3, 4): txtP3 = vals(3, 5)
        txtPhi3 = vals(3, 6)
        
        txtR4 = vals(4, 0): txtS4 = vals(4, 1): txtTheta4 = vals(4, 2)
        txtE4 = vals(4, 3): txtF4 = vals(4, 4): txtP4 = vals(4, 5)
        txtPhi4 = vals(4, 6)

        txtR5 = vals(5, 0): txtS5 = vals(5, 1): txtTheta5 = vals(5, 2)
        txtE5 = vals(5, 3): txtF5 = vals(5, 4): txtP5 = vals(5, 5)
        txtPhi5 = vals(5, 6)
        
        txtR6 = vals(6, 0): txtS6 = vals(6, 1): txtTheta6 = vals(6, 2)
        txtE6 = vals(6, 3): txtF6 = vals(6, 4): txtP6 = vals(6, 5)
        TxtPhi6 = vals(6, 6)
                 
        TxtIterations = vals(7, 0)
        TxtPoints = vals(8, 0)
                    
        txtX1 = vals(0, 0)
        txtX2 = vals(0, 1)
        txtY1 = vals(0, 2)
        txtY2 = vals(0, 3)
    
        txtR7 = vals(9, 0): txtS7 = vals(9, 1): txtTheta7 = vals(9, 2)
        txtE7 = vals(9, 3): txtF7 = vals(9, 4): txtP7 = vals(9, 5): txtPhi7 = vals(9, 6)
        
        txtR8 = vals(10, 0): txtS8 = vals(10, 1): txtTheta8 = vals(10, 2)
        txtE8 = vals(10, 3): txtF8 = vals(10, 4): txtP8 = vals(10, 5): txtPhi8 = vals(10, 6)
        
        txtR9 = vals(11, 0): txtS9 = vals(11, 1): txtTheta9 = vals(11, 2)
        txtE9 = vals(11, 3): txtF9 = vals(11, 4): txtP9 = vals(11, 5): txtPhi9 = vals(11, 6)
End Function


Public Function GetIntermediateIFS(ifs1, ifs2, ByRef ifs3, frame, totalframes)
    Dim i, j, dif, first, last, newval
    For i = 0 To 14
    For j = 0 To 7
        first = ifs1(i, j)
        last = ifs2(i, j)
        If first = "" Then
            first = 0
        End If
        If last = "" Then
            last = 0
        End If
        dif = last - first
        newval = first + dif * frame / totalframes
        ifs3(i, j) = newval
    Next
    Next
End Function
