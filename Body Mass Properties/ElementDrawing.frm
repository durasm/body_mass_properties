VERSION 5.00
Begin VB.Form ElementDrawing 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Element Drawing"
   ClientHeight    =   7668
   ClientLeft      =   936
   ClientTop       =   936
   ClientWidth     =   10308
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   PaletteMode     =   1  'UseZOrder
   ScaleHeight     =   7668
   ScaleWidth      =   10308
   ShowInTaskbar   =   0   'False
   Begin VB.PictureBox PictureBox 
      BackColor       =   &H00FFFFFF&
      Height          =   7200
      Left            =   120
      Picture         =   "ElementDrawing.frx":0000
      ScaleHeight     =   596
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   836
      TabIndex        =   0
      Top             =   360
      Width           =   10080
   End
   Begin VB.Label Text 
      Caption         =   "komad"
      Height          =   192
      Left            =   1320
      TabIndex        =   2
      Top             =   120
      Width           =   4752
   End
   Begin VB.Label Label1 
      Caption         =   "Element Name:"
      Height          =   192
      Left            =   120
      TabIndex        =   1
      Top             =   120
      Width           =   1152
   End
End
Attribute VB_Name = "ElementDrawing"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Load()
    
    ElementDrawing.Icon = LoadResPicture(2002, 1)
    
End Sub


