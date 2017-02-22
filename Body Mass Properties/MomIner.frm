VERSION 5.00
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.1#0"; "COMDLG32.OCX"
Begin VB.Form MomIner 
   BackColor       =   &H00C0C0C0&
   Caption         =   "Body Mass Properties"
   ClientHeight    =   492
   ClientLeft      =   60
   ClientTop       =   684
   ClientWidth     =   12168
   ForeColor       =   &H00000000&
   Icon            =   "MomIner.frx":0000
   LinkTopic       =   "Form1"
   LockControls    =   -1  'True
   PaletteMode     =   1  'UseZOrder
   ScaleHeight     =   492
   ScaleMode       =   0  'User
   ScaleWidth      =   12168
   Begin MSComDlg.CommonDialog CommonDialog 
      Left            =   5280
      Top             =   60
      _ExtentX        =   677
      _ExtentY        =   677
      _Version        =   327680
      CancelError     =   -1  'True
      DialogTitle     =   "Open"
      Filter          =   "Body Mass Properties Files (*.ind)|*.ind|All FIles ( *.*)|*.*"
      Flags           =   2097158
      InitDir         =   "App.Path"
   End
   Begin VB.Line Line1 
      BorderColor     =   &H00808080&
      Index           =   3
      X1              =   24
      X2              =   12300
      Y1              =   468
      Y2              =   468
   End
   Begin VB.Line Line1 
      BorderColor     =   &H00FFFFFF&
      Index           =   2
      X1              =   12
      X2              =   12288
      Y1              =   480
      Y2              =   480
   End
   Begin VB.Line Line1 
      BorderColor     =   &H00FFFFFF&
      Index           =   1
      X1              =   0
      X2              =   12276
      Y1              =   12
      Y2              =   12
   End
   Begin VB.Line Line1 
      BorderColor     =   &H00808080&
      Index           =   0
      X1              =   0
      X2              =   12276
      Y1              =   0
      Y2              =   0
   End
   Begin VB.Menu mnuFile 
      Caption         =   "&File"
      Begin VB.Menu mnuNew 
         Caption         =   "&New"
         Shortcut        =   ^N
      End
      Begin VB.Menu mnuOpen 
         Caption         =   "&Open..."
         Shortcut        =   ^O
      End
      Begin VB.Menu mnuSave 
         Caption         =   "&Save"
         Shortcut        =   ^S
      End
      Begin VB.Menu mnuSaveAs 
         Caption         =   "Save&As..."
         Shortcut        =   ^A
      End
      Begin VB.Menu mnuSep 
         Caption         =   "-"
      End
      Begin VB.Menu mnuPrintSetup 
         Caption         =   "Print Set&up..."
      End
      Begin VB.Menu mnuPrint 
         Caption         =   "&Print"
         Shortcut        =   ^P
      End
      Begin VB.Menu mnuRecentFiles 
         Caption         =   "-"
         Index           =   0
      End
      Begin VB.Menu mnuRecentFiles 
         Caption         =   "&1. Filename1"
         Index           =   1
      End
      Begin VB.Menu mnuRecentFiles 
         Caption         =   "&2. Filename2"
         Index           =   2
      End
      Begin VB.Menu mnuRecentFiles 
         Caption         =   "&3. Filename3"
         Index           =   3
      End
      Begin VB.Menu mnuRecentFiles 
         Caption         =   "&4. Filename4"
         Index           =   4
      End
      Begin VB.Menu mnuSepa 
         Caption         =   "-"
      End
      Begin VB.Menu mnuExit 
         Caption         =   "E&xit"
      End
   End
   Begin VB.Menu mnuEdit 
      Caption         =   "&Edit"
      Begin VB.Menu mnuCut 
         Caption         =   "&Cut"
         Enabled         =   0   'False
         Shortcut        =   ^X
      End
      Begin VB.Menu mnuCopy 
         Caption         =   "&Copy"
         Enabled         =   0   'False
         Shortcut        =   ^C
      End
      Begin VB.Menu mnuPaste 
         Caption         =   "&Paste"
         Enabled         =   0   'False
         Shortcut        =   ^V
      End
      Begin VB.Menu mnuSepara 
         Caption         =   "-"
      End
      Begin VB.Menu mnuInsert 
         Caption         =   "&Insert element"
         Begin VB.Menu mnuBasic 
            Caption         =   "&Basic elements"
         End
         Begin VB.Menu mnuTorus 
            Caption         =   "&Torus sections"
         End
         Begin VB.Menu mnuParaboloid 
            Caption         =   "&Paraboloid sections"
            Enabled         =   0   'False
         End
         Begin VB.Menu mnuElipsoid 
            Caption         =   "&Ellipsoid sections"
            Enabled         =   0   'False
         End
         Begin VB.Menu mnuSphere 
            Caption         =   "&Sphere sections"
            Enabled         =   0   'False
         End
         Begin VB.Menu mnuCircularCone 
            Caption         =   "Circular C&one sections"
            Enabled         =   0   'False
         End
         Begin VB.Menu mnuCone 
            Caption         =   "&Cone sections"
            Enabled         =   0   'False
         End
         Begin VB.Menu mnuCilindrical 
            Caption         =   "C&ilindrical sections"
            Enabled         =   0   'False
         End
         Begin VB.Menu mnuProfiles 
            Caption         =   "&Profiles"
            Enabled         =   0   'False
         End
         Begin VB.Menu mnuCombinations 
            Caption         =   "&Section combinations"
            Enabled         =   0   'False
         End
      End
      Begin VB.Menu mnuDelete 
         Caption         =   "&Delete Element"
         Shortcut        =   {DEL}
      End
      Begin VB.Menu mnuSepar 
         Caption         =   "-"
      End
      Begin VB.Menu mnuNext 
         Caption         =   "&Next"
         Enabled         =   0   'False
         Shortcut        =   ^U
      End
      Begin VB.Menu mnuPrevious 
         Caption         =   "&Previous"
         Enabled         =   0   'False
         Shortcut        =   ^D
      End
   End
   Begin VB.Menu mnuView 
      Caption         =   "&View"
      Begin VB.Menu mnuViewElement 
         Caption         =   "&Element Window"
      End
      Begin VB.Menu mnuViewResult 
         Caption         =   "&Results Window"
      End
   End
   Begin VB.Menu mnuActions 
      Caption         =   "&Actions"
      Begin VB.Menu mnuCalculate 
         Caption         =   "&Calculate"
         Shortcut        =   {F5}
      End
   End
   Begin VB.Menu mnuOptions 
      Caption         =   "&Options"
      Begin VB.Menu mnuAngle 
         Caption         =   "&Angle"
         Begin VB.Menu mnuEuler 
            Caption         =   "&Euler"
         End
         Begin VB.Menu mnuDeSparr 
            Caption         =   "&DeSparre"
         End
         Begin VB.Menu mnuParameter 
            Caption         =   "&Parameter"
            Begin VB.Menu mnuCoefficients 
               Caption         =   "&Coefficients"
               Checked         =   -1  'True
            End
            Begin VB.Menu mnuVecAng 
               Caption         =   "&Vector + Angle"
            End
         End
      End
      Begin VB.Menu mnuUnits 
         Caption         =   "&Units"
         Begin VB.Menu mnuAngleO 
            Caption         =   "&Angle"
            Begin VB.Menu mnuRad 
               Caption         =   "&Rad"
               Checked         =   -1  'True
            End
            Begin VB.Menu mnuDeg 
               Caption         =   "&Deg"
            End
         End
         Begin VB.Menu mnuLinear 
            Caption         =   "&Linear"
            Begin VB.Menu mnuMm 
               Caption         =   "&mm"
            End
            Begin VB.Menu mnuCm 
               Caption         =   "&cm"
            End
            Begin VB.Menu mnuM 
               Caption         =   "m&eter"
               Checked         =   -1  'True
            End
            Begin VB.Menu mnuInch 
               Caption         =   "&inch"
            End
         End
         Begin VB.Menu mnuMass 
            Caption         =   "&Mass"
            Begin VB.Menu mnuG 
               Caption         =   "&g"
            End
            Begin VB.Menu mnuKg 
               Caption         =   "&kg"
               Checked         =   -1  'True
            End
            Begin VB.Menu mnuLb 
               Caption         =   "&lb"
            End
         End
      End
   End
   Begin VB.Menu mnuHelp 
      Caption         =   "&Help"
      Begin VB.Menu mnuContents 
         Caption         =   "&Contents"
         Enabled         =   0   'False
         Shortcut        =   {F1}
      End
      Begin VB.Menu mnuSearch 
         Caption         =   "&Search..."
         Enabled         =   0   'False
      End
      Begin VB.Menu mnuSeparato 
         Caption         =   "-"
      End
      Begin VB.Menu mnuAbout 
         Caption         =   "&About Body Mass Properties..."
      End
   End
End
Attribute VB_Name = "MomIner"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub Form_Load()
       
    LoadLargeToolbar
    
    UpdateOptionsMenu
    
    MomIner.Icon = LoadResPicture(2002, 1)
    
    MomIner.ProgressBar.Visible = False

End Sub


Private Sub Form_Terminate()
    Call mnuExit_Click
End Sub

Private Sub Form_Unload(Cancel As Integer)
   Call mnuExit_Click
End Sub


Private Sub mnuAbout_Click()
    About.PictureAbout = LoadResPicture(2002, 1)
    About.Show 1
End Sub


Private Sub mnuBasic_Click()
    
    For i% = 1 To 5
        Insert.List.AddItem ("Prim" + LTrim(Str(i%)))
    Next i%
    
    Insert.List.ListIndex = 0
    
    Insert.Show

End Sub

Private Sub mnuCalculate_Click()

Dim aryMomInerTemp(3, 3) As Single
Dim arySteinerVector(3) As Single

ReDim aryMass(numNoOfElem)
ReDim aryVectorsToCM(3, numNoOfElem)

'Call Element.OK


MomIner.StatusBar.Panels(1).Text = "Calculating"
MomIner.StatusBar.Refresh
MomIner.ProgressBar.Max = 100
MomIner.ProgressBar.Value = 0
MomIner.ProgressBar.Visible = True
    
TotalMass = 0
For i% = 1 To 3
    For j% = 1 To 3
        aryTotalMomIner(i%, j%) = 0
    Next j%
Next i%

MomIner.ProgressBar.Value = 10

For i% = 1 To numNoOfElem
    
    CalculateElement (i%)
    aryMass(i%) = Mass
    TotalMass = TotalMass + Mass
    
    For j% = 1 To 3
        aryVectorsToCM(j%, i%) = aryVectorToCM(j%)
    Next j%

Next i%

MomIner.ProgressBar.Value = 20

For i% = 1 To 3
    aryTotalVectorToCM(i%) = 0
    For j% = 1 To numNoOfElem
        aryTotalVectorToCM(i%) = aryTotalVectorToCM(i%) + aryVectorsToCM(i%, j%) * aryMass(j%)
    Next j%
    aryTotalVectorToCM(i%) = aryTotalVectorToCM(i%) / TotalMass
Next i%

MomIner.ProgressBar.Value = 30

For i% = 1 To numNoOfElem
    For j% = 1 To 3
        arySteinerVector(j%) = aryTotalVectorToCM(j%) - aryVectorsToCM(j%, i%)
    Next j%
    
    CalculateElement (i%)
    
    'Call SteinerFromCM(aryMomInerElement(1, 1), aryMomInerTemp(1, 1), arySteinerVector(1), aryMass(i%))
    
    aryMomInerTemp(1, 1) = aryMomInerElement(1, 1) + (arySteinerVector(2) ^ 2 + arySteinerVector(3) ^ 2) * aryMass(i%)
    aryMomInerTemp(2, 1) = aryMomInerElement(2, 1) + arySteinerVector(2) * arySteinerVector(1) * aryMass(i%)
    aryMomInerTemp(3, 1) = aryMomInerElement(3, 1) + arySteinerVector(3) * arySteinerVector(1) * aryMass(i%)
    aryMomInerTemp(2, 2) = aryMomInerElement(2, 2) + (arySteinerVector(1) ^ 2 + arySteinerVector(3) ^ 2) * aryMass(i%)
    aryMomInerTemp(3, 2) = aryMomInerElement(3, 2) + arySteinerVector(3) * arySteinerVector(2) * aryMass(i%)
    aryMomInerTemp(3, 3) = aryMomInerElement(3, 3) + (arySteinerVector(1) ^ 2 + arySteinerVector(2) ^ 2) * aryMass(i%)
    
    aryMomInerTemp(1, 2) = aryMomInerTemp(2, 1)
    aryMomInerTemp(1, 3) = aryMomInerTemp(3, 1)
    aryMomInerTemp(2, 3) = aryMomInerTemp(3, 2)
    
    For j% = 1 To 3
        For k% = 1 To 3
            aryTotalMomIner(j%, k%) = aryTotalMomIner(j%, k%) + aryMomInerTemp(j%, k%)
        Next k%
    Next j%
Next i%

MomIner.ProgressBar.Value = 80

Call MainInerMom(aryTotalMomIner(1, 1), aryL(1, 1), aryTotalMainMomIner(1, 1))

MomIner.ProgressBar.Value = 100

ShowResults

MomIner.ProgressBar.Visible = False
MomIner.StatusBar.Panels(1).Text = "Ready"

Results.Show


End Sub

Private Sub mnuCilindrical_Click()
    
    For i% = 242 To 297
        Insert.List.AddItem ("Cil" + LTrim(Str(i%)))
    Next i%
    
    Insert.List.ListIndex = 0
    
    Insert.Show


End Sub

Private Sub mnuCircularCone_Click()
    
    For i% = 308 To 321
        Insert.List.AddItem ("Kru" + LTrim(Str(i%)))
    Next i%
    
    Insert.List.ListIndex = 0
    
    Insert.Show


End Sub

Private Sub mnuCm_Click()
    strLinear = "cm"
    UpdateOptionsMenu
    
    If Element.Enabled Or Results.Visible = True Then
    
        ShowData (numLastElementShown)
        ShowPosition
        ShowDensity
        ShowElementResults
        ShowResults
        
    End If
    
    
End Sub

Private Sub mnuCoefficients_Click()
    strAngleType = "Parameter"
    logParVecAng = True
    UpdateOptionsMenu
    
    If Element.Enabled Or Results.Enabled = True Then
    
        ShowPosition
        ShowResults
        
    End If
    
End Sub

Private Sub mnuCombinations_Click()
    
    For i% = 298 To 307
        Insert.List.AddItem ("Kom" + LTrim(Str(i%)))
    Next i%
    
    Insert.List.ListIndex = 0
    
    Insert.Show


End Sub

Private Sub mnuCone_Click()
    
    For i% = 219 To 241
        Insert.List.AddItem ("Kon" + LTrim(Str(i%)))
    Next i%
    
    Insert.List.ListIndex = 0
    
    Insert.Show


End Sub

Private Sub mnuContents_Click()
Exit Sub
End Sub

Private Sub mnuCopy_Click()
Exit Sub
End Sub

Private Sub mnuCut_Click()
Exit Sub
End Sub

Private Sub mnuDeg_Click()
    strAngle = "deg"
    
    UpdateOptionsMenu
    
    If Element.Visible Or Results.Visible = True Then
    
        ShowData (numLastElementShown)
        ShowPosition
        ShowElementResults
        ShowResults
        
    End If
    
End Sub

Private Sub mnuDelete_Click()

If Element.Visible = True And numNoOfElem > 0 Then
    
    For i% = numLastElementShown * 18 + 1 To UBound(aryTempElementData)
        aryTempElementData((numLastElementShown - 2) * 18 + i%) = aryTempElementData(i%)
    Next i%
    
    For i% = numLastElementShown To numNoOfElem - 1
        aryElemNames(i%) = aryElemNames(i% + 1)
    Next i%
    
    numNoOfElem = numNoOfElem - 1
    
    If numNoOfElem = 0 Then
        ReDim aryElemNames(numNoOfElem + 1)
        ReDim aryTempElementData((numNoOfElem + 1) * 18)
        Element.List.RemoveItem numLastElementShown - 1
        Element.Visible = False
        ActivateMenu
    Else
        ReDim Preserve aryElemNames(numNoOfElem)
        ReDim Preserve aryTempElementData(numNoOfElem * 18)
        Element.List.RemoveItem numLastElementShown - 1
        If numLastElementShown = numNoOfElem + 1 Then
            numLastElementShown = numLastElementShown - 1
        End If
        Element.List.ListIndex = numLastElementShown - 1
        Call Element.InitializeElement
    End If
Else
    Exit Sub
End If

End Sub

Private Sub mnuDeSparr_Click()
    strAngleType = "DeSparre"
    UpdateOptionsMenu
    
    If Element.Enabled Or Results.Enabled = True Then
    
        ShowPosition
        ShowResults
        
    End If
    
End Sub

Private Sub mnuElipsoid_Click()
    
    For i% = 125 To 139
        Insert.List.AddItem ("Eli" + LTrim(Str(i%)))
    Next i%
    
    Insert.List.ListIndex = 0
    
    Insert.Show


End Sub

Private Sub mnuEuler_Click()
    
    strAngleType = "Euler"
    UpdateOptionsMenu
    
    If Element.Enabled Or Results.Enabled = True Then
    
        ShowPosition
        ShowResults
        
    End If
    
End Sub

Private Sub mnuExit_Click()
    
    If logNotSaved = True Then
        RetVal = MsgBox("Current file: " + strFilename + " is NOT SAVED." _
        + Chr$(13) + Chr$(10) + "Do you wan't to save it ?", 35) 'To Save Or Not To Save
        Select Case RetVal
        Case 6 'Yes
            If logFileNameGiven = True Then
                SaveFile
            Else
                mnuSaveAs_Click
            End If
        End Select
    End If
         
    Unload Insert
    Unload Results
    Unload Element
    
    End
End Sub

Private Sub mnuG_Click()
    strMass = "g"
    UpdateOptionsMenu
    
    If Element.Enabled Or Results.Visible = True Then
    
        ShowDensity
        ShowElementResults
        ShowResults
        
    End If
    
End Sub

Private Sub mnuLb_Click()
    strMass = "lb"
    UpdateOptionsMenu
    
    If Element.Enabled Or Results.Visible = True Then
    
        ShowDensity
        ShowElementResults
        ShowResults
        
    End If
    
End Sub

Private Sub mnuInch_Click()
    strLinear = "in"
    UpdateOptionsMenu
    
    If Element.Enabled Or Results.Visible = True Then
    
        ShowData (numLastElementShown)
        ShowPosition
        ShowDensity
        ShowElementResults
        ShowResults
        
    End If
    
End Sub

Private Sub mnuKg_Click()
    strMass = "kg"
    UpdateOptionsMenu
    
    If Element.Enabled Or Results.Visible = True Then
    
        ShowDensity
        ShowElementResults
        ShowResults
        
    End If

End Sub

Private Sub mnuM_Click()
    strLinear = "m"
    UpdateOptionsMenu
    
    If Element.Enabled Or Results.Visible = True Then
    
        ShowData (numLastElementShown)
        ShowPosition
        ShowDensity
        ShowElementResults
        ShowResults
        
    End If
    
End Sub

Private Sub mnuMm_Click()
    strLinear = "mm"
    UpdateOptionsMenu
    
    If Element.Enabled Or Results.Visible = True Then
    
        ShowData (numLastElementShown)
        ShowPosition
        ShowDensity
        ShowElementResults
        ShowResults
        
    End If
    
End Sub

Private Sub mnuNew_Click()
    Dim RetVal As Integer
    
    If logNotSaved = True Then
        RetVal = MsgBox("Current file: " + strFilename + " is NOT SAVED." _
        + Chr$(13) + Chr$(10) + "Do you wan't to save it ?", 35) 'To Save Or Not To Save
        Select Case RetVal
        Case 6 'Yes
            If logFileNameGiven = True Then
                SaveFile
            Else
                mnuSaveAs_Click
            End If
        Case 2 'Cancel
            Exit Sub
        End Select
    End If
    
    NewFile

End Sub

Private Sub mnuNext_Click()
Exit Sub
End Sub

Private Sub mnuOpen_Click()
    
    On Error Resume Next
    
    If logNotSaved = True Then
        RetVal = MsgBox("Current file: " + strFilename + " is NOT SAVED." _
        + Chr$(13) + Chr$(10) + "Do you wan't to save it ?", 35) 'To Save Or Not To Save
        Select Case RetVal
        Case 6 'Yes
            If logFileNameGiven = True Then
                SaveFile
            Else
                mnuSaveAs_Click
            End If
        Case 2 'Cancel
            Exit Sub
        End Select
    End If
    
    MomIner.CommonDialog.Flags = 2097158
    MomIner.CommonDialog.InitDir = strPathFilename
    MomIner.CommonDialog.DialogTitle = "Open"
    MomIner.CommonDialog.ShowOpen
    
    If Err <> 32755 Then 'Pressed Open
        Temp$ = strFilename
        strFilename = MomIner.CommonDialog.filename
        OpenFile
        If Err Then
            strFilename = Temp$
            Exit Sub
        End If
        PathFileName
        SetName
        UpdateFileMenu
        Unload Element
        Load Element
        Element.Show
    End If
    
End Sub

Private Sub mnuParaboloid_Click()
    
    For i% = 117 To 124
        Insert.List.AddItem ("Par" + LTrim(Str(i%)))
    Next i%
    
    Insert.List.ListIndex = 0
    
    Insert.Show

End Sub

Private Sub mnuPaste_Click()
Exit Sub
End Sub

Private Sub mnuPrevious_Click()
Exit Sub
End Sub

Private Sub mnuPrint_Click()
    On Error Resume Next
    MomIner.CommonDialog.Flags = &H0
    MomIner.CommonDialog.DialogTitle = "Print"
    MomIner.CommonDialog.ShowPrinter
    
    If Err <> 32755 Then 'Pressed Print
    
    End If
    
End Sub

Private Sub mnuPrintSetup_Click()
    
    On Error Resume Next
    
    MomIner.CommonDialog.Flags = &H40
    MomIner.CommonDialog.ShowPrinter
    
End Sub

Private Sub mnuProfiles_Click()
    
    For i% = 322 To 402
        Insert.List.AddItem ("Pro" + LTrim(Str(i%)))
    Next i%
    
    Insert.List.ListIndex = 0
    
    Insert.Show


End Sub

Private Sub mnuRad_Click()
    strAngle = "rad"
    UpdateOptionsMenu
    
    If Element.Enabled Or Results.Visible = True Then
    
        ShowData (numLastElementShown)
        ShowPosition
        ShowElementResults
        ShowResults
        
    End If
    
End Sub

Private Sub mnuRecentFiles_Click(Index As Integer)
    
    On Error Resume Next
    
    If logNotSaved = True Then
        RetVal = MsgBox("Current file: " + strFilename + " is NOT SAVED." _
        + Chr$(13) + Chr$(10) + "Do you wan't to save it ?", 35) 'To Save Or Not To Save
        Select Case RetVal
        Case 6 'Yes
            If logFileNameGiven = True Then
                SaveFile
            Else
                mnuSaveAs_Click
            End If
        Case 2 'Cancel
            Exit Sub
        End Select
    End If
    
    Temp$ = strFilename
    strFilename = MomIner.mnuRecentFiles(Index).Caption
    OpenFile
    If Err Then
        strFilename = Temp$
        Exit Sub
    End If
    PathFileName
    SetName
    UpdateFileMenu
    Unload Element
    Load Element
    Element.Show
End Sub

Private Sub mnuSave_Click()
    
    If logFileNameGiven = False Then
        mnuSaveAs_Click
    Else
        SaveFile
    End If
    
End Sub
Private Sub mnuSaveAs_Click()
    
    On Error Resume Next
    
    MomIner.CommonDialog.Flags = 2097158
    MomIner.CommonDialog.InitDir = strPathFilename
    MomIner.CommonDialog.DialogTitle = "SaveAs"
    MomIner.CommonDialog.filename = strFilename
    MomIner.CommonDialog.ShowSave
    
    If Err <> 32755 Then 'Pressed Save
        strFilename = MomIner.CommonDialog.filename
        SaveFile
        PathFileName
        SetName
        UpdateFileMenu
    End If
End Sub

Private Sub mnuSearch_Click()
Exit Sub
End Sub

Private Sub mnuSphere_Click()
    
    For i% = 140 To 218
        Insert.List.AddItem ("Kug" + LTrim(Str(i%)))
    Next i%
    
    Insert.List.ListIndex = 0
    
    Insert.Show


End Sub

Private Sub mnuTorus_Click()
    
    For i% = 1 To 1
        Insert.List.AddItem ("Tor" + LTrim(Str(i%)))
    Next i%
    
    Insert.List.ListIndex = 0
     
    Insert.Show
    
End Sub

Private Sub mnuVecAng_Click()
    strAngleType = "Parameter"
    logParVecAng = False
    UpdateOptionsMenu
    
    If Element.Enabled Or Results.Enabled = True Then
    
        ShowPosition
        ShowResults
        
    End If
    
End Sub

Private Sub mnuViewElement_Click()
    
'    If Element.Enabled = False Then
'    Element.Visible = True
'    End If
    
    Element.Show
    
End Sub

Private Sub mnuViewResult_Click()
    Results.Show
End Sub


Private Sub ProgressBar_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    ProgressBar.Left = StatusBar.Left + 948
    ProgressBar.Top = ProgressBar.Top + 60
End Sub


Private Sub Toolbar_ButtonClick(ByVal Button As Button)
    Select Case Button.Key
    Case "New_BT"
        mnuNew_Click
    Case "Open_BT"
        mnuOpen_Click
    Case "Save_BT"
        mnuSave_Click
    Case "Print_BT"
        mnuPrint_Click
    Case "Cut_BT"
        mnuCut_Click
    Case "Copy_BT"
        mnuCopy_Click
    Case "Paste_BT"
        mnuPaste_Click
    Case "Calculate_BT"
        mnuCalculate_Click
    Case "Help_BT"
        mnuContents_Click
    End Select
End Sub


