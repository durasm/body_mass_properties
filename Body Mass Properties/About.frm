VERSION 5.00
Begin VB.Form About 
   BackColor       =   &H00C0C0C0&
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "About Body Mass Properties"
   ClientHeight    =   2016
   ClientLeft      =   4128
   ClientTop       =   3480
   ClientWidth     =   4044
   LinkTopic       =   "Form1"
   LockControls    =   -1  'True
   MaxButton       =   0   'False
   MinButton       =   0   'False
   PaletteMode     =   1  'UseZOrder
   ScaleHeight     =   2016
   ScaleWidth      =   4044
   ShowInTaskbar   =   0   'False
   Begin VB.CommandButton CommandAbout 
      Caption         =   "&Ok"
      Default         =   -1  'True
      Height          =   336
      Left            =   1800
      TabIndex        =   4
      Top             =   1440
      Width           =   1236
   End
   Begin VB.PictureBox PictureAbout 
      Appearance      =   0  'Flat
      AutoSize        =   -1  'True
      BackColor       =   &H00C0C0C0&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   624
      Left            =   360
      ScaleHeight     =   52
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   52
      TabIndex        =   0
      Top             =   420
      Width           =   624
   End
   Begin VB.Label LabelAbout 
      Alignment       =   2  'Center
      Caption         =   "Mario Ðuras"
      Height          =   192
      Index           =   3
      Left            =   1140
      TabIndex        =   3
      Top             =   960
      Width           =   2592
   End
   Begin VB.Label LabelAbout 
      Alignment       =   2  'Center
      Caption         =   "Copyright© - November, 1996."
      Height          =   216
      Index           =   2
      Left            =   1140
      TabIndex        =   2
      Top             =   660
      Width           =   2544
   End
   Begin VB.Label LabelAbout 
      Alignment       =   2  'Center
      Caption         =   "Body Mass Properties Version 1.0"
      Height          =   228
      Index           =   1
      Left            =   1140
      TabIndex        =   1
      Top             =   360
      Width           =   2532
   End
End
Attribute VB_Name = "About"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub CommandAbout_Click()
    Unload About
End Sub


Private Sub Form_Load()
    
    About.Icon = LoadResPicture(2002, 1)

End Sub


