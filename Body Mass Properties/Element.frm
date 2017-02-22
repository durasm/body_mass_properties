VERSION 5.00
Begin VB.Form Element 
   Caption         =   "Element"
   ClientHeight    =   8460
   ClientLeft      =   744
   ClientTop       =   372
   ClientWidth     =   10740
   LinkTopic       =   "Form1"
   LockControls    =   -1  'True
   PaletteMode     =   1  'UseZOrder
   ScaleHeight     =   8460
   ScaleWidth      =   10740
   ShowInTaskbar   =   0   'False
   Begin VB.ComboBox List 
      Height          =   288
      ItemData        =   "Element.frx":0000
      Left            =   5460
      List            =   "Element.frx":0002
      Style           =   2  'Dropdown List
      TabIndex        =   81
      Top             =   420
      Width           =   3372
   End
   Begin VB.Frame FrameDensity 
      Caption         =   "Density && Thickness"
      Height          =   2352
      Left            =   8640
      TabIndex        =   53
      Top             =   6000
      Width           =   1872
      Begin VB.TextBox TextElement 
         Height          =   288
         Index           =   32
         Left            =   180
         TabIndex        =   78
         Top             =   1920
         Width           =   852
      End
      Begin VB.TextBox TextElement 
         Height          =   288
         Index           =   17
         Left            =   180
         TabIndex        =   55
         Top             =   1200
         Width           =   852
      End
      Begin VB.Label Label 
         Alignment       =   2  'Center
         Caption         =   "Thickness"
         Height          =   192
         Index           =   38
         Left            =   60
         TabIndex        =   80
         Top             =   1680
         Width           =   1092
      End
      Begin VB.Label Label 
         Caption         =   "m"
         Height          =   192
         Index           =   39
         Left            =   1080
         TabIndex        =   79
         Top             =   1980
         Width           =   672
      End
      Begin VB.Label Label 
         Caption         =   "kg/m^3"
         Height          =   192
         Index           =   29
         Left            =   1080
         TabIndex        =   56
         Top             =   1260
         Width           =   672
      End
      Begin VB.Label Label 
         Alignment       =   2  'Center
         Caption         =   "Density"
         Height          =   192
         Index           =   28
         Left            =   60
         TabIndex        =   54
         Top             =   960
         Width           =   1092
      End
   End
   Begin VB.TextBox TextElement 
      Height          =   288
      Index           =   16
      Left            =   5820
      TabIndex        =   45
      Top             =   7920
      Visible         =   0   'False
      Width           =   852
   End
   Begin VB.TextBox TextElement 
      Height          =   288
      Index           =   12
      Left            =   2760
      TabIndex        =   39
      Top             =   7200
      Width           =   852
   End
   Begin VB.TextBox TextElement 
      Height          =   288
      Index           =   11
      Left            =   1680
      TabIndex        =   38
      Top             =   7200
      Width           =   852
   End
   Begin VB.TextBox TextElement 
      Height          =   288
      Index           =   6
      Left            =   3660
      TabIndex        =   17
      Top             =   4800
      Width           =   852
   End
   Begin VB.TextBox TextElement 
      Height          =   288
      Index           =   5
      Left            =   3660
      TabIndex        =   16
      Top             =   4440
      Width           =   852
   End
   Begin VB.TextBox TextElement 
      Height          =   288
      Index           =   4
      Left            =   1020
      TabIndex        =   15
      Top             =   5520
      Width           =   852
   End
   Begin VB.TextBox TextElement 
      Height          =   288
      Index           =   3
      Left            =   1020
      TabIndex        =   14
      Top             =   5160
      Width           =   852
   End
   Begin VB.TextBox TextElement 
      Height          =   288
      Index           =   2
      Left            =   1020
      TabIndex        =   13
      Top             =   4800
      Width           =   852
   End
   Begin VB.CommandButton CommandCalculate 
      Caption         =   "Ca&lculate"
      Default         =   -1  'True
      Height          =   312
      Index           =   4
      Left            =   9420
      TabIndex        =   9
      Top             =   1800
      Width           =   1092
   End
   Begin VB.CommandButton CommandHelp 
      Caption         =   "&Help"
      Enabled         =   0   'False
      Height          =   312
      Index           =   3
      Left            =   9420
      TabIndex        =   8
      Top             =   1200
      Width           =   1092
   End
   Begin VB.CommandButton CommandCancel 
      Cancel          =   -1  'True
      Caption         =   "&Cancel"
      Height          =   312
      Index           =   2
      Left            =   9420
      TabIndex        =   7
      Top             =   660
      Width           =   1092
   End
   Begin VB.Frame FrameElemRes 
      Caption         =   "Element Results"
      Height          =   3672
      Left            =   5460
      TabIndex        =   6
      Top             =   2280
      Width           =   5052
      Begin VB.TextBox TextElement 
         Height          =   288
         Index           =   19
         Left            =   3000
         Locked          =   -1  'True
         TabIndex        =   82
         Top             =   780
         Width           =   1332
      End
      Begin VB.TextBox TextElement 
         Height          =   288
         Index           =   18
         Left            =   240
         Locked          =   -1  'True
         TabIndex        =   71
         Top             =   780
         Width           =   1332
      End
      Begin VB.TextBox TextElement 
         BackColor       =   &H00FFFFFF&
         Height          =   288
         Index           =   23
         Left            =   240
         Locked          =   -1  'True
         TabIndex        =   69
         Top             =   2340
         Width           =   1332
      End
      Begin VB.TextBox TextElement 
         BackColor       =   &H00FFFFFF&
         Height          =   288
         Index           =   29
         Left            =   240
         Locked          =   -1  'True
         TabIndex        =   68
         Top             =   3060
         Width           =   1332
      End
      Begin VB.TextBox TextElement 
         BackColor       =   &H00FFFFFF&
         Height          =   288
         Index           =   24
         Left            =   1620
         Locked          =   -1  'True
         TabIndex        =   67
         Top             =   2340
         Width           =   1332
      End
      Begin VB.TextBox TextElement 
         BackColor       =   &H00FFFFFF&
         Height          =   288
         Index           =   27
         Left            =   1620
         Locked          =   -1  'True
         TabIndex        =   66
         Top             =   2700
         Width           =   1332
      End
      Begin VB.TextBox TextElement 
         BackColor       =   &H00FFFFFF&
         Height          =   288
         Index           =   30
         Left            =   1620
         Locked          =   -1  'True
         TabIndex        =   65
         Top             =   3060
         Width           =   1332
      End
      Begin VB.TextBox TextElement 
         BackColor       =   &H00FFFFFF&
         Height          =   288
         Index           =   25
         Left            =   3000
         Locked          =   -1  'True
         TabIndex        =   64
         Top             =   2340
         Width           =   1332
      End
      Begin VB.TextBox TextElement 
         BackColor       =   &H00FFFFFF&
         Height          =   288
         Index           =   28
         Left            =   3000
         Locked          =   -1  'True
         TabIndex        =   63
         Top             =   2700
         Width           =   1332
      End
      Begin VB.TextBox TextElement 
         BackColor       =   &H00FFFFFF&
         Height          =   288
         Index           =   31
         Left            =   3000
         Locked          =   -1  'True
         TabIndex        =   62
         Top             =   3060
         Width           =   1332
      End
      Begin VB.TextBox TextElement 
         BackColor       =   &H00FFFFFF&
         Height          =   288
         Index           =   26
         Left            =   240
         Locked          =   -1  'True
         TabIndex        =   61
         Top             =   2700
         Width           =   1332
      End
      Begin VB.TextBox TextElement 
         Height          =   288
         Index           =   21
         Left            =   3000
         Locked          =   -1  'True
         TabIndex        =   59
         Top             =   1560
         Width           =   1332
      End
      Begin VB.TextBox TextElement 
         Height          =   288
         Index           =   20
         Left            =   240
         Locked          =   -1  'True
         TabIndex        =   58
         Top             =   1560
         Width           =   1332
      End
      Begin VB.TextBox TextElement 
         Height          =   288
         Index           =   22
         Left            =   1620
         Locked          =   -1  'True
         TabIndex        =   57
         Top             =   1560
         Width           =   1332
      End
      Begin VB.Label Label 
         Caption         =   "kgm^2"
         Height          =   192
         Index           =   37
         Left            =   4380
         TabIndex        =   77
         Top             =   2760
         Width           =   612
      End
      Begin VB.Label Label 
         Caption         =   "m"
         Height          =   192
         Index           =   35
         Left            =   4380
         TabIndex        =   76
         Top             =   1620
         Width           =   612
      End
      Begin VB.Label Label 
         Caption         =   "kg"
         Height          =   192
         Index           =   33
         Left            =   4380
         TabIndex        =   75
         Top             =   840
         Width           =   612
      End
      Begin VB.Label Label 
         Caption         =   "m^3"
         Height          =   192
         Index           =   31
         Left            =   1620
         TabIndex        =   74
         Top             =   840
         Width           =   612
      End
      Begin VB.Label Label 
         Alignment       =   2  'Center
         Caption         =   "Mass"
         Height          =   192
         Index           =   32
         Left            =   3000
         TabIndex        =   73
         Top             =   540
         Width           =   1332
      End
      Begin VB.Label Label 
         Alignment       =   2  'Center
         Caption         =   "Volume"
         Height          =   192
         Index           =   30
         Left            =   240
         TabIndex        =   72
         Top             =   540
         Width           =   1332
      End
      Begin VB.Label Label 
         Alignment       =   2  'Center
         Caption         =   "Moments Of Inertia"
         Height          =   192
         Index           =   36
         Left            =   240
         TabIndex        =   70
         Top             =   2100
         Width           =   4092
      End
      Begin VB.Label Label 
         Alignment       =   2  'Center
         Caption         =   "Vector to Center Of Mass"
         Height          =   192
         Index           =   34
         Left            =   240
         TabIndex        =   60
         Top             =   1320
         Width           =   4092
      End
   End
   Begin VB.CommandButton CommandElement 
      Caption         =   "&OK"
      Height          =   312
      Index           =   1
      Left            =   9420
      TabIndex        =   5
      Top             =   240
      Width           =   1092
   End
   Begin VB.Frame FramePosition 
      Caption         =   "Position"
      Height          =   2352
      Left            =   240
      TabIndex        =   4
      Top             =   6000
      Width           =   8292
      Begin VB.TextBox TextElement 
         Height          =   288
         Index           =   15
         Left            =   6660
         TabIndex        =   44
         Top             =   1200
         Width           =   852
      End
      Begin VB.TextBox TextElement 
         Height          =   288
         Index           =   14
         Left            =   5580
         TabIndex        =   43
         Top             =   1200
         Width           =   852
      End
      Begin VB.TextBox TextElement 
         Height          =   288
         Index           =   13
         Left            =   4500
         TabIndex        =   42
         Top             =   1200
         Width           =   852
      End
      Begin VB.TextBox TextElement 
         Height          =   288
         Index           =   10
         Left            =   360
         TabIndex        =   37
         Top             =   1200
         Width           =   852
      End
      Begin VB.TextBox TextElement 
         Height          =   288
         Index           =   9
         Left            =   2400
         TabIndex        =   35
         Top             =   300
         Width           =   372
      End
      Begin VB.Label Label 
         Alignment       =   2  'Center
         Caption         =   "e0"
         Height          =   192
         Index           =   26
         Left            =   5580
         TabIndex        =   52
         Top             =   1680
         Visible         =   0   'False
         Width           =   852
      End
      Begin VB.Label Label 
         Caption         =   "rad"
         Height          =   192
         Index           =   27
         Left            =   6480
         TabIndex        =   51
         Top             =   1980
         Visible         =   0   'False
         Width           =   372
      End
      Begin VB.Label Label 
         Caption         =   "rad"
         Height          =   192
         Index           =   25
         Left            =   7560
         TabIndex        =   50
         Top             =   1260
         Width           =   372
      End
      Begin VB.Label Label 
         Caption         =   "m"
         Height          =   192
         Index           =   19
         Left            =   3420
         TabIndex        =   49
         Top             =   1260
         Width           =   372
      End
      Begin VB.Label Label 
         Alignment       =   2  'Center
         Caption         =   "Psi"
         Height          =   192
         Index           =   24
         Left            =   6660
         TabIndex        =   48
         Top             =   960
         Width           =   852
      End
      Begin VB.Label Label 
         Alignment       =   2  'Center
         Caption         =   "Theta"
         Height          =   192
         Index           =   23
         Left            =   5580
         TabIndex        =   47
         Top             =   960
         Width           =   852
      End
      Begin VB.Label Label 
         Alignment       =   2  'Center
         Caption         =   "Phi"
         Height          =   192
         Index           =   22
         Left            =   4500
         TabIndex        =   46
         Top             =   960
         Width           =   852
      End
      Begin VB.Label Label 
         Alignment       =   2  'Center
         Caption         =   "DeSparre Angles"
         Height          =   192
         Index           =   21
         Left            =   4500
         TabIndex        =   41
         Top             =   660
         Width           =   3012
      End
      Begin VB.Label Label 
         Alignment       =   2  'Center
         Caption         =   "Angular Position"
         Height          =   192
         Index           =   20
         Left            =   4500
         TabIndex        =   40
         Top             =   420
         Width           =   3012
      End
      Begin VB.Label Label 
         Alignment       =   2  'Center
         Caption         =   "Vector to Reference Point"
         Height          =   192
         Index           =   18
         Left            =   360
         TabIndex        =   36
         Top             =   900
         Width           =   3012
      End
      Begin VB.Label Label 
         Alignment       =   1  'Right Justify
         Caption         =   "Reference Point  Number="
         Height          =   192
         Index           =   17
         Left            =   60
         TabIndex        =   34
         Top             =   360
         Width           =   2292
      End
   End
   Begin VB.Frame FrameGeometry 
      Caption         =   "Geometry"
      Height          =   1812
      Left            =   240
      TabIndex        =   1
      Top             =   4140
      Width           =   5112
      Begin VB.TextBox TextElement 
         Height          =   288
         Index           =   8
         Left            =   3420
         TabIndex        =   31
         Top             =   1380
         Visible         =   0   'False
         Width           =   852
      End
      Begin VB.TextBox TextElement 
         Height          =   288
         Index           =   7
         Left            =   3420
         TabIndex        =   29
         Top             =   1020
         Visible         =   0   'False
         Width           =   852
      End
      Begin VB.TextBox TextElement 
         Height          =   288
         Index           =   1
         Left            =   780
         TabIndex        =   12
         Top             =   300
         Width           =   852
      End
      Begin VB.Label Label 
         Caption         =   "Label14"
         Height          =   192
         Index           =   16
         Left            =   4320
         TabIndex        =   33
         Top             =   1440
         Visible         =   0   'False
         Width           =   372
      End
      Begin VB.Label Label 
         Caption         =   "Label13"
         Height          =   192
         Index           =   15
         Left            =   4320
         TabIndex        =   32
         Top             =   1080
         Visible         =   0   'False
         Width           =   372
      End
      Begin VB.Label Label 
         Alignment       =   1  'Right Justify
         Caption         =   "Label1="
         Height          =   192
         Index           =   8
         Left            =   2760
         TabIndex        =   30
         Top             =   1440
         Visible         =   0   'False
         Width           =   612
      End
      Begin VB.Label Label 
         Alignment       =   1  'Right Justify
         Caption         =   "Label1="
         Height          =   192
         Index           =   7
         Left            =   2760
         TabIndex        =   28
         Top             =   1080
         Visible         =   0   'False
         Width           =   612
      End
      Begin VB.Label Label 
         Caption         =   "rad"
         Height          =   192
         Index           =   14
         Left            =   4320
         TabIndex        =   27
         Top             =   720
         Width           =   372
      End
      Begin VB.Label Label 
         Caption         =   "m"
         Height          =   192
         Index           =   13
         Left            =   4320
         TabIndex        =   26
         Top             =   360
         Width           =   372
      End
      Begin VB.Label Label 
         Caption         =   "m"
         Height          =   192
         Index           =   12
         Left            =   1680
         TabIndex        =   25
         Top             =   1440
         Width           =   372
      End
      Begin VB.Label Label 
         Caption         =   "m"
         Height          =   192
         Index           =   11
         Left            =   1680
         TabIndex        =   24
         Top             =   1080
         Width           =   372
      End
      Begin VB.Label Label 
         Caption         =   "m"
         Height          =   192
         Index           =   10
         Left            =   1680
         TabIndex        =   23
         Top             =   720
         Width           =   372
      End
      Begin VB.Label Label 
         Caption         =   "m"
         Height          =   192
         Index           =   9
         Left            =   1680
         TabIndex        =   22
         Top             =   360
         Width           =   372
      End
      Begin VB.Label Label 
         Alignment       =   1  'Right Justify
         Caption         =   "Phi="
         Height          =   192
         Index           =   6
         Left            =   2760
         TabIndex        =   21
         Top             =   720
         Width           =   612
      End
      Begin VB.Label Label 
         Alignment       =   1  'Right Justify
         Caption         =   "h="
         Height          =   192
         Index           =   5
         Left            =   2760
         TabIndex        =   20
         Top             =   360
         Width           =   612
      End
      Begin VB.Label Label 
         Alignment       =   1  'Right Justify
         Caption         =   "H="
         Height          =   192
         Index           =   4
         Left            =   120
         TabIndex        =   19
         Top             =   1440
         Width           =   612
      End
      Begin VB.Label Label 
         Alignment       =   1  'Right Justify
         Caption         =   "r="
         Height          =   192
         Index           =   3
         Left            =   120
         TabIndex        =   18
         Top             =   1080
         Width           =   612
      End
      Begin VB.Label Label 
         Alignment       =   1  'Right Justify
         Caption         =   "R1="
         Height          =   192
         Index           =   2
         Left            =   120
         TabIndex        =   11
         Top             =   720
         Width           =   612
      End
      Begin VB.Label Label 
         Alignment       =   1  'Right Justify
         Caption         =   "R="
         Height          =   192
         Index           =   1
         Left            =   120
         TabIndex        =   10
         Top             =   360
         Width           =   612
      End
   End
   Begin VB.PictureBox PictureElement 
      BackColor       =   &H00C0C0C0&
      FillColor       =   &H00C0C0C0&
      ForeColor       =   &H00000000&
      Height          =   3648
      Left            =   240
      Picture         =   "Element.frx":0004
      ScaleHeight     =   300
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   420
      TabIndex        =   0
      Top             =   420
      Width           =   5088
   End
   Begin VB.Label LabelElement 
      Caption         =   "&Element:"
      Height          =   192
      Index           =   2
      Left            =   5460
      TabIndex        =   3
      Top             =   180
      Width           =   2052
   End
   Begin VB.Label LabelElement 
      Caption         =   "Element Drawing:"
      Height          =   192
      Index           =   1
      Left            =   240
      TabIndex        =   2
      Top             =   180
      Width           =   2052
   End
End
Attribute VB_Name = "Element"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Sub OK()
    For j% = 1 To numNoOfElem
        aryMomIner((j% - 1) * 20 + 1) = "*" + aryElemNames(j%)
        aryMomIner((j% - 1) * 20 + 2) = Element.List.List(j% - 1)
    Next j%
        
    For j% = 1 To numNoOfElem
        For i% = 1 To 18
            aryMomIner(aryFirstData(j%) + i% - 1) = aryTempElementData(i% + (j% - 1) * 18)
        Next i%
    Next j%
    
    If numNoOfElemTemp <> numNoOfElem Then
    ReDim Preserve aryMomIner(numNoOfElem * 20)
    numNoOfElemTemp = numNoOfElem
    End If
    
    logNotSaved = True
End Sub

Sub InitializeElement()
    
    ShowData (numLastElementShown)
    ShowPosition
    ShowDensity
    If numNoOfElem > 0 Then
        Call ShowPicture(Element, aryElemNames(numLastElementShown))
        CalculateElement (numLastElementShown)
    End If
    ShowElementResults

End Sub


Private Sub CommandCalculate_Click(Index As Integer)
    
    CalculateElement (numLastElementShown)
    
    ShowElementResults

End Sub

Private Sub CommandCancel_Click(Index As Integer)
        
        numNoOfElem = numNoOfElemTemp
        
        RedimensionArrays
        
        Unload Element

End Sub

Private Sub CommandElement_Click(Index As Integer)
    
    For j% = 1 To numNoOfElem
        aryMomIner((j% - 1) * 20 + 1) = "*" + aryElemNames(j%)
        aryMomIner((j% - 1) * 20 + 2) = Element.List.List(j% - 1)
    Next j%
        
    For j% = 1 To numNoOfElem
        For i% = 1 To 18
            aryMomIner(aryFirstData(j%) + i% - 1) = aryTempElementData(i% + (j% - 1) * 18)
        Next i%
    Next j%
    
    If numNoOfElemTemp <> numNoOfElem Then
    ReDim Preserve aryMomIner(numNoOfElem * 20)
    numNoOfElemTemp = numNoOfElem
    End If
    
    logNotSaved = True
    
    Unload Element
    
End Sub

Private Sub Form_Load()
    
    Element.Icon = LoadResPicture(2002, 1)
    

    
    If numNoOfElem = 0 Then
        Exit Sub
    End If
    
    RedimensionArrays
    
    CopyElementDataToTemp
    
    ActivateMenu
    
    InitializeElement
    
    For i% = 1 To numNoOfElem
         Element.List.AddItem (aryMomIner(aryFirstData(i%) - 1))
    Next i%
    
    Element.List.ListIndex = numLastElementShown - 1
    
End Sub



Private Sub Form_Terminate()
    Call CommandCancel_Click(1)
End Sub

Private Sub Form_Unload(Cancel As Integer)
    Call CommandCancel_Click(1)
End Sub


Private Sub List_Click()
    If numLastElementShown <> Element.List.ListIndex + 1 Then
        
        numLastElementShown = Element.List.ListIndex + 1
        
        InitializeElement
        
    End If
End Sub


Private Sub PictureElement_DblClick()
    
    ElementDrawing.Text = Element.List.Text
    ElementDrawing.PictureBox.Picture = Element.PictureElement.Picture

    ElementDrawing.Show

End Sub


Private Sub TextElement_LostFocus(Index As Integer)

On Error Resume Next

Dim AnglesE(3) As Single
Dim AnglesD(3) As Single
Dim Vec(3) As Single
Dim Ang As Single

    If Not (IsNumeric(Element.TextElement(Index))) And Index < 18 Then
        ProcError ("Invalid Data Number")
        Element.TextElement(Index).SetFocus
        Exit Sub
    End If
            
    If Index < 18 Then
        DisableResultElement
        DisableResult
    Else
        Exit Sub
    End If
    
    logNotSaved = True
    
    If Index < 9 Then
        If Element.Label(Index + 8) = strLinear Then
            aryTempElementData(Index + (numLastElementShown - 1) * 18) = _
            RecalculateBackLinear(CSng(Element.TextElement(Index)))
        Else
            aryTempElementData(Index + (numLastElementShown - 1) * 18) = _
            RecalculateBackAngular(CSng(Element.TextElement(Index)))
        End If
    Else
        If Index > 9 And Index < 13 Then
            aryTempElementData(Index + (numLastElementShown - 1) * 18) = _
            RecalculateBackLinear(CSng(Element.TextElement(Index)))
        Else
            If Index > 12 And Index < 17 Then
                
                Select Case strAngleType
                    Case "Euler"
                        AnglesE(1) = RecalculateBackAngular(CSng(Element.TextElement(13)))
                        AnglesE(2) = RecalculateBackAngular(CSng(Element.TextElement(14)))
                        AnglesE(3) = RecalculateBackAngular(CSng(Element.TextElement(15)))
                        
                        Call EulerToParameter(AnglesE(1), _
                        aryTempElementData(13 + (numLastElementShown - 1) * 18))
            
                    Case "DeSparre"
                        AnglesD(1) = RecalculateBackAngular(CSng(Element.TextElement(13)))
                        AnglesD(2) = RecalculateBackAngular(CSng(Element.TextElement(14)))
                        AnglesD(3) = RecalculateBackAngular(CSng(Element.TextElement(15)))
                        
                        Call DeSparrToParameter(AnglesD(1), _
                        aryTempElementData(13 + (numLastElementShown - 1) * 18))
                    
                    Case "Parameter"
                        If logParVecAng = True Then
                            If Index > 12 And Index < 16 Then
                                aryTempElementData(Index + 1 + (numLastElementShown - 1) * 18) = CSng(Element.TextElement(Index))
                            Else
                                aryTempElementData(Index - 3 + (numLastElementShown - 1) * 18) = CSng(Element.TextElement(Index))
                            End If
                        Else
                            Vec(1) = RecalculateBackLinear(CSng(Element.TextElement(13)))
                            Vec(2) = RecalculateBackLinear(CSng(Element.TextElement(14)))
                            Vec(3) = RecalculateBackLinear(CSng(Element.TextElement(15)))
                            Ang = RecalculateBackAngular(CSng(Element.TextElement(16)))
                            
                            Call VecAngToParameter(Vec(1), Ang, aryTempElementData(13 + (numLastElementShown - 1) * 18))
                
                        End If
            
                End Select
                        
            Else
                If Index = 17 Then
                    aryTempElementData(Index + (numLastElementShown - 1) * 18) = _
                    RecalculateBackDensity(CSng(Element.TextElement(Index)))
                Else
                    If Index <> 9 Then
                        aryTempElementData(Index + (numLastElementShown - 1) * 18) = _
                        RecalculateBackLinear(CSng(Element.TextElement(Index)))
                    Else
                        aryTempElementData(Index + (numLastElementShown - 1) * 18) = _
                        CSng(Element.TextElement(Index))
                    End If
                End If
            End If
        End If
    End If

End Sub

