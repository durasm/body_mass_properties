VERSION 5.00
Begin VB.Form Results 
   BackColor       =   &H00C0C0C0&
   Caption         =   "Results"
   ClientHeight    =   5436
   ClientLeft      =   1068
   ClientTop       =   1596
   ClientWidth     =   10368
   LinkTopic       =   "Form1"
   LockControls    =   -1  'True
   PaletteMode     =   1  'UseZOrder
   ScaleHeight     =   5436
   ScaleWidth      =   10368
   ShowInTaskbar   =   0   'False
   WhatsThisHelp   =   -1  'True
   Begin VB.Frame FrameMass 
      Caption         =   "Mass And Mass Center"
      Height          =   1392
      Left            =   60
      TabIndex        =   0
      Top             =   60
      Width           =   10212
      Begin VB.TextBox TextMass 
         Alignment       =   1  'Right Justify
         Height          =   288
         Index           =   1
         Left            =   2280
         Locked          =   -1  'True
         TabIndex        =   35
         Top             =   360
         Width           =   792
      End
      Begin VB.TextBox TextMass 
         Alignment       =   1  'Right Justify
         Height          =   288
         Index           =   5
         Left            =   8040
         Locked          =   -1  'True
         TabIndex        =   31
         Top             =   960
         Width           =   1332
      End
      Begin VB.TextBox TextMass 
         Alignment       =   1  'Right Justify
         Height          =   288
         Index           =   3
         Left            =   8040
         Locked          =   -1  'True
         TabIndex        =   30
         Top             =   600
         Width           =   1332
      End
      Begin VB.TextBox TextMass 
         Alignment       =   1  'Right Justify
         Height          =   288
         Index           =   4
         Left            =   8040
         Locked          =   -1  'True
         TabIndex        =   29
         Top             =   240
         Width           =   1332
      End
      Begin VB.TextBox TextMass 
         Alignment       =   1  'Right Justify
         Height          =   312
         Index           =   2
         Left            =   2280
         Locked          =   -1  'True
         TabIndex        =   26
         Top             =   840
         Width           =   1332
      End
      Begin VB.Label LabelMass 
         Caption         =   "Total Number Of Elements = "
         Height          =   192
         Index           =   1
         Left            =   180
         TabIndex        =   34
         Top             =   420
         Width           =   2052
      End
      Begin VB.Label LabelMass 
         Caption         =   "kg"
         Height          =   192
         Index           =   3
         Left            =   3660
         TabIndex        =   32
         Top             =   900
         Width           =   432
      End
      Begin VB.Label LabelMass 
         Alignment       =   2  'Center
         Caption         =   "Vector to Center Of Mass ="
         Height          =   192
         Index           =   4
         Left            =   5940
         TabIndex        =   28
         Top             =   660
         Width           =   2052
      End
      Begin VB.Label LabelMass 
         Caption         =   "m"
         Height          =   192
         Index           =   5
         Left            =   9420
         TabIndex        =   27
         Top             =   660
         Width           =   492
      End
      Begin VB.Label LabelMass 
         Caption         =   "Total Mass ="
         Height          =   192
         Index           =   2
         Left            =   1260
         TabIndex        =   25
         Top             =   900
         Width           =   972
      End
   End
   Begin VB.TextBox TextMomIner 
      Alignment       =   1  'Right Justify
      BackColor       =   &H00FFFFFF&
      Height          =   288
      Index           =   23
      Left            =   180
      Locked          =   -1  'True
      TabIndex        =   53
      Top             =   3720
      Width           =   1332
   End
   Begin VB.TextBox TextMomIner 
      Alignment       =   1  'Right Justify
      BackColor       =   &H00FFFFFF&
      Height          =   288
      Index           =   29
      Left            =   180
      Locked          =   -1  'True
      TabIndex        =   52
      Top             =   4440
      Width           =   1332
   End
   Begin VB.TextBox TextMomIner 
      Alignment       =   1  'Right Justify
      BackColor       =   &H00FFFFFF&
      Height          =   288
      Index           =   24
      Left            =   1560
      Locked          =   -1  'True
      TabIndex        =   51
      Top             =   3720
      Width           =   1332
   End
   Begin VB.TextBox TextMomIner 
      Alignment       =   1  'Right Justify
      BackColor       =   &H00FFFFFF&
      Height          =   288
      Index           =   27
      Left            =   1560
      Locked          =   -1  'True
      TabIndex        =   50
      Top             =   4080
      Width           =   1332
   End
   Begin VB.TextBox TextMomIner 
      Alignment       =   1  'Right Justify
      BackColor       =   &H00FFFFFF&
      Height          =   288
      Index           =   30
      Left            =   1560
      Locked          =   -1  'True
      TabIndex        =   49
      Top             =   4440
      Width           =   1332
   End
   Begin VB.TextBox TextMomIner 
      Alignment       =   1  'Right Justify
      BackColor       =   &H00FFFFFF&
      Height          =   288
      Index           =   25
      Left            =   2940
      Locked          =   -1  'True
      TabIndex        =   48
      Top             =   3720
      Width           =   1332
   End
   Begin VB.TextBox TextMomIner 
      Alignment       =   1  'Right Justify
      BackColor       =   &H00FFFFFF&
      Height          =   288
      Index           =   28
      Left            =   2940
      Locked          =   -1  'True
      TabIndex        =   47
      Top             =   4080
      Width           =   1332
   End
   Begin VB.TextBox TextMomIner 
      Alignment       =   1  'Right Justify
      BackColor       =   &H00FFFFFF&
      Height          =   288
      Index           =   31
      Left            =   2940
      Locked          =   -1  'True
      TabIndex        =   46
      Top             =   4440
      Width           =   1332
   End
   Begin VB.TextBox TextMomIner 
      Alignment       =   1  'Right Justify
      BackColor       =   &H00FFFFFF&
      Height          =   288
      Index           =   26
      Left            =   180
      Locked          =   -1  'True
      TabIndex        =   45
      Top             =   4080
      Width           =   1332
   End
   Begin VB.TextBox TextMomIner 
      Alignment       =   1  'Right Justify
      BackColor       =   &H00FFFFFF&
      Height          =   288
      Index           =   13
      Left            =   5340
      Locked          =   -1  'True
      TabIndex        =   18
      Top             =   2580
      Width           =   1332
   End
   Begin VB.TextBox TextMomIner 
      Alignment       =   1  'Right Justify
      BackColor       =   &H00FFFFFF&
      Height          =   288
      Index           =   10
      Left            =   5340
      Locked          =   -1  'True
      TabIndex        =   17
      Top             =   2220
      Width           =   1332
   End
   Begin VB.TextBox TextMomIner 
      Alignment       =   1  'Right Justify
      BackColor       =   &H00FFFFFF&
      Height          =   288
      Index           =   16
      Left            =   5340
      Locked          =   -1  'True
      TabIndex        =   16
      Top             =   2940
      Width           =   1332
   End
   Begin VB.TextBox TextMomIner 
      Alignment       =   1  'Right Justify
      BackColor       =   &H00FFFFFF&
      Height          =   288
      Index           =   11
      Left            =   6720
      Locked          =   -1  'True
      TabIndex        =   15
      Top             =   2220
      Width           =   1332
   End
   Begin VB.TextBox TextMomIner 
      Alignment       =   1  'Right Justify
      BackColor       =   &H00FFFFFF&
      Height          =   288
      Index           =   14
      Left            =   6720
      Locked          =   -1  'True
      TabIndex        =   14
      Top             =   2580
      Width           =   1332
   End
   Begin VB.TextBox TextMomIner 
      Alignment       =   1  'Right Justify
      BackColor       =   &H00FFFFFF&
      Height          =   288
      Index           =   17
      Left            =   6720
      Locked          =   -1  'True
      TabIndex        =   13
      Top             =   2940
      Width           =   1332
   End
   Begin VB.TextBox TextMomIner 
      Alignment       =   1  'Right Justify
      BackColor       =   &H00FFFFFF&
      Height          =   288
      Index           =   12
      Left            =   8100
      Locked          =   -1  'True
      TabIndex        =   12
      Top             =   2220
      Width           =   1332
   End
   Begin VB.TextBox TextMomIner 
      Alignment       =   1  'Right Justify
      BackColor       =   &H00FFFFFF&
      Height          =   288
      Index           =   15
      Left            =   8100
      Locked          =   -1  'True
      TabIndex        =   11
      Top             =   2580
      Width           =   1332
   End
   Begin VB.TextBox TextMomIner 
      Alignment       =   1  'Right Justify
      BackColor       =   &H00FFFFFF&
      Height          =   288
      Index           =   18
      Left            =   8100
      Locked          =   -1  'True
      TabIndex        =   10
      Top             =   2940
      Width           =   1332
   End
   Begin VB.TextBox TextMomIner 
      Alignment       =   1  'Right Justify
      BackColor       =   &H00FFFFFF&
      Height          =   288
      Index           =   4
      Left            =   180
      Locked          =   -1  'True
      TabIndex        =   9
      Top             =   2580
      Width           =   1332
   End
   Begin VB.TextBox TextMomIner 
      Alignment       =   1  'Right Justify
      BackColor       =   &H00FFFFFF&
      Height          =   288
      Index           =   9
      Left            =   2940
      Locked          =   -1  'True
      TabIndex        =   8
      Top             =   2940
      Width           =   1332
   End
   Begin VB.TextBox TextMomIner 
      Alignment       =   1  'Right Justify
      BackColor       =   &H00FFFFFF&
      Height          =   288
      Index           =   6
      Left            =   2940
      Locked          =   -1  'True
      TabIndex        =   7
      Top             =   2580
      Width           =   1332
   End
   Begin VB.TextBox TextMomIner 
      Alignment       =   1  'Right Justify
      BackColor       =   &H00FFFFFF&
      Height          =   288
      Index           =   3
      Left            =   2940
      Locked          =   -1  'True
      TabIndex        =   6
      Top             =   2220
      Width           =   1332
   End
   Begin VB.TextBox TextMomIner 
      Alignment       =   1  'Right Justify
      BackColor       =   &H00FFFFFF&
      Height          =   288
      Index           =   8
      Left            =   1560
      Locked          =   -1  'True
      TabIndex        =   5
      Top             =   2940
      Width           =   1332
   End
   Begin VB.TextBox TextMomIner 
      Alignment       =   1  'Right Justify
      BackColor       =   &H00FFFFFF&
      Height          =   288
      Index           =   5
      Left            =   1560
      Locked          =   -1  'True
      TabIndex        =   4
      Top             =   2580
      Width           =   1332
   End
   Begin VB.TextBox TextMomIner 
      Alignment       =   1  'Right Justify
      BackColor       =   &H00FFFFFF&
      Height          =   288
      Index           =   2
      Left            =   1560
      Locked          =   -1  'True
      TabIndex        =   3
      Top             =   2220
      Width           =   1332
   End
   Begin VB.TextBox TextMomIner 
      Alignment       =   1  'Right Justify
      BackColor       =   &H00FFFFFF&
      Height          =   288
      Index           =   7
      Left            =   180
      Locked          =   -1  'True
      TabIndex        =   2
      Top             =   2940
      Width           =   1332
   End
   Begin VB.TextBox TextMomIner 
      Alignment       =   1  'Right Justify
      BackColor       =   &H00FFFFFF&
      Height          =   288
      Index           =   1
      Left            =   180
      Locked          =   -1  'True
      TabIndex        =   1
      Top             =   2220
      Width           =   1332
   End
   Begin VB.Frame FrameMomIner 
      Caption         =   "Moments Of Inertia Tensors"
      Height          =   3792
      Index           =   13
      Left            =   60
      TabIndex        =   19
      Top             =   1560
      Width           =   10212
      Begin VB.TextBox TextMomIner 
         Alignment       =   1  'Right Justify
         Height          =   288
         Index           =   22
         Left            =   6660
         Locked          =   -1  'True
         TabIndex        =   43
         Top             =   3180
         Visible         =   0   'False
         Width           =   1332
      End
      Begin VB.TextBox TextMomIner 
         Alignment       =   1  'Right Justify
         Height          =   288
         Index           =   21
         Left            =   8040
         Locked          =   -1  'True
         TabIndex        =   39
         Top             =   2520
         Width           =   1332
      End
      Begin VB.TextBox TextMomIner 
         Alignment       =   1  'Right Justify
         Height          =   288
         Index           =   20
         Left            =   6660
         Locked          =   -1  'True
         TabIndex        =   38
         Top             =   2520
         Width           =   1332
      End
      Begin VB.TextBox TextMomIner 
         Alignment       =   1  'Right Justify
         Height          =   288
         Index           =   19
         Left            =   5280
         Locked          =   -1  'True
         TabIndex        =   37
         Top             =   2520
         Width           =   1332
      End
      Begin VB.Label LabelMomIner 
         Caption         =   "rad"
         Height          =   192
         Index           =   13
         Left            =   8040
         TabIndex        =   55
         Top             =   3240
         Visible         =   0   'False
         Width           =   672
      End
      Begin VB.Label LabelMomIner 
         Alignment       =   2  'Center
         Caption         =   "Transformation Matrix"
         Height          =   192
         Index           =   12
         Left            =   120
         TabIndex        =   54
         Top             =   1860
         Width           =   4092
      End
      Begin VB.Label LabelMomIner 
         Caption         =   "rad"
         Height          =   192
         Index           =   11
         Left            =   9420
         TabIndex        =   44
         Top             =   2580
         Width           =   612
      End
      Begin VB.Label LabelMomIner 
         Alignment       =   2  'Center
         Caption         =   "e0"
         Height          =   192
         Index           =   10
         Left            =   6660
         TabIndex        =   42
         Top             =   2940
         Visible         =   0   'False
         Width           =   1332
      End
      Begin VB.Label LabelMomIner 
         Alignment       =   2  'Center
         Caption         =   "Psi"
         Height          =   192
         Index           =   9
         Left            =   8040
         TabIndex        =   41
         Top             =   2340
         Width           =   1272
      End
      Begin VB.Label LabelMomIner 
         Alignment       =   2  'Center
         Caption         =   "Theta"
         Height          =   192
         Index           =   8
         Left            =   6660
         TabIndex        =   40
         Top             =   2340
         Width           =   1332
      End
      Begin VB.Label LabelMomIner 
         Alignment       =   2  'Center
         Caption         =   "Phi"
         Height          =   192
         Index           =   7
         Left            =   5280
         TabIndex        =   36
         Top             =   2340
         Width           =   1332
      End
      Begin VB.Label LabelMomIner 
         Alignment       =   2  'Center
         Caption         =   "DeSparre Angles"
         Height          =   192
         Index           =   6
         Left            =   5280
         TabIndex        =   33
         Top             =   2100
         Width           =   4092
      End
      Begin VB.Label LabelMomIner 
         Alignment       =   2  'Center
         Caption         =   "Main Central Axes Position"
         Height          =   192
         Index           =   5
         Left            =   5280
         TabIndex        =   24
         Top             =   1920
         Width           =   4092
      End
      Begin VB.Label LabelMomIner 
         Caption         =   "kgm^2"
         Height          =   192
         Index           =   4
         Left            =   9420
         TabIndex        =   23
         Top             =   1080
         Width           =   672
      End
      Begin VB.Label LabelMomIner 
         Alignment       =   2  'Center
         Caption         =   "Main Central Moments Of Inertia"
         Height          =   192
         Index           =   2
         Left            =   5280
         TabIndex        =   22
         Top             =   360
         Width           =   4092
      End
      Begin VB.Label LabelMomIner 
         Alignment       =   2  'Center
         Caption         =   "Moments Of Inertia in Mass Center"
         Height          =   192
         Index           =   1
         Left            =   120
         TabIndex        =   21
         Top             =   360
         Width           =   4092
      End
      Begin VB.Label LabelMomIner 
         Caption         =   "kgm^2"
         Height          =   192
         Index           =   3
         Left            =   4260
         TabIndex        =   20
         Top             =   1080
         Width           =   732
      End
   End
End
Attribute VB_Name = "Results"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub HScroll1_Change()

End Sub


Private Sub Frame2_DragDrop(Source As Control, X As Single, Y As Single)

End Sub


Private Sub Label1_Click()

End Sub


Private Sub Label8_Click()

End Sub

Private Sub Form_Load()
    Results.Icon = LoadResPicture(2002, 1)
End Sub


