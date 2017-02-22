VERSION 5.00
Begin VB.Form Insert 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Insert Body Element"
   ClientHeight    =   4380
   ClientLeft      =   2376
   ClientTop       =   2376
   ClientWidth     =   8040
   LinkTopic       =   "Form1"
   LockControls    =   -1  'True
   MaxButton       =   0   'False
   MinButton       =   0   'False
   PaletteMode     =   1  'UseZOrder
   ScaleHeight     =   4380
   ScaleWidth      =   8040
   ShowInTaskbar   =   0   'False
   Begin VB.TextBox Text 
      Height          =   288
      Left            =   1440
      TabIndex        =   7
      Text            =   "New Element"
      Top             =   180
      Width           =   3852
   End
   Begin VB.CommandButton CommandCancel 
      Caption         =   "&Cancel"
      Height          =   312
      Index           =   2
      Left            =   6720
      TabIndex        =   4
      Top             =   3180
      Width           =   1212
   End
   Begin VB.CommandButton CommandAdd 
      Caption         =   "&Add"
      Default         =   -1  'True
      Height          =   312
      Index           =   1
      Left            =   6720
      TabIndex        =   3
      Top             =   2760
      Width           =   1212
   End
   Begin VB.CommandButton CommandHelp 
      Caption         =   "&Help"
      Enabled         =   0   'False
      Height          =   312
      Index           =   0
      Left            =   6720
      TabIndex        =   2
      Top             =   3840
      Width           =   1212
   End
   Begin VB.PictureBox PictureElement 
      Height          =   3648
      Left            =   240
      Picture         =   "Insert.frx":0000
      ScaleHeight     =   300
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   420
      TabIndex        =   1
      Top             =   480
      Width           =   5088
   End
   Begin VB.ComboBox List 
      Height          =   288
      ItemData        =   "Insert.frx":0822
      Left            =   5460
      List            =   "Insert.frx":0824
      Sorted          =   -1  'True
      Style           =   2  'Dropdown List
      TabIndex        =   0
      Top             =   480
      Width           =   2472
   End
   Begin VB.Label LabelInsert 
      Caption         =   "Element Name:"
      Height          =   192
      Index           =   2
      Left            =   240
      TabIndex        =   6
      Top             =   240
      Width           =   1212
   End
   Begin VB.Label LabelInsert 
      Caption         =   "&Elements List:"
      Height          =   192
      Index           =   1
      Left            =   5460
      TabIndex        =   5
      Top             =   240
      Width           =   1812
   End
End
Attribute VB_Name = "Insert"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub List_Click()
    
    Call ShowPicture(Insert, Insert.List.Text)
    
End Sub

Private Sub CommandAdd_Click(Index As Integer)
    If numNoOfElem > 0 Then

    For i% = 1 To numNoOfElem
        If UCase(Element.List.List(i% - 1)) = UCase(Insert.Text.Text) Then
            ProcError ("Invalid Element Name")
            Insert.Text.SetFocus
            Exit Sub
        End If
    Next i%
    
    End If
    
    numNoOfElem = numNoOfElem + 1
    
    ActivateMenu
    
    RedimensionArrays
    
    aryElemNames(numNoOfElem) = Insert.List.Text
    aryFirstData(numNoOfElem) = (numNoOfElem - 1) * 20 + 3
    
    For i% = 1 To 18
        aryTempElementData((numNoOfElem - 1) * 18 + i% - 1) = 0
    Next i%
    
    Element.List.AddItem (Insert.Text.Text)
    
    numLastElementShown = numNoOfElem
        
    Element.List.ListIndex = numLastElementShown - 1
      
    Unload Insert
    
    ShowData (numLastElementShown)
    ShowPosition
    ShowDensity
    
    Call ShowPicture(Element, aryElemNames(numLastElementShown))
    
    'ShowElementResults
    
    DisableResultElement
    
    Element.Show
    
End Sub

Private Sub CommandCancel_Click(Index As Integer)

    Unload Insert
    
End Sub
Private Sub Form_Load()

    Insert.Icon = LoadResPicture(2002, 1)
    
End Sub




Private Sub PictureElement_DblClick()
    
    ElementDrawing.PictureBox.Picture = Insert.PictureElement.Picture

    ElementDrawing.Show

End Sub

