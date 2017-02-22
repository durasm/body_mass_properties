Attribute VB_Name = "Procedures"

Sub DisableResult()
    
    For i% = 1 To 5
        Result.TextMass(i%).Enabled = False
    Next i%
    
    For i% = 1 To 31
        Result.TextMomIner(i%).Enabled = False
    Next i%

End Sub
Sub EnableResult()
    
    For i% = 1 To 5
        Result.TextMass(i%).Enabled = True
    Next i%
    
    For i% = 1 To 31
        Result.TextMomIner(i%).Enabled = True
    Next i%

End Sub

Sub DisableResultElement()
    
    For i% = 18 To 31
        Element.TextElement(i%).Enabled = False
    Next i%
    
End Sub

Sub EnableResultElement()
    For i% = 18 To 31
        Element.TextElement(i%).Enabled = True
    Next i%
End Sub


Function RecalculateBackAngular(Angle As Single)
    Select Case strAngle
        Case "deg"
            RecalculateBackAngular = Angle * Pi / 180
        Case Else
            RecalculateBackAngular = Angle
    End Select
End Function

Function RecalculateBackDensity(Density As Single)
    
    Select Case strMass
    
        Case "g"
            RecalculateBackDensity = Density / 1000
        
        Case "lb"
            RecalculateBackDensity = Density / 2.205
    
        Case Else
            RecalculateBackDensity = Density
            
    End Select
    
    Select Case strLinear
    
        Case "mm"
            RecalculateBackDensity = RecalculateBackDensity * 1000 ^ 3
            
        Case "cm"
            RecalculateBackDensity = RecalculateBackDensity * 100 ^ 3
            
        Case "in"
            RecalculateBackDensity = RecalculateBackDensity * 39.37 ^ 3
        
    End Select
    
End Function

Function RecalculateBackLinear(Linear As Single)
    
    Select Case strLinear
        Case "mm"
            RecalculateBackLinear = Linear / 1000
        Case "cm"
            RecalculateBackLinear = Linear / 100
        Case "in"
            RecalculateBackLinear = Linear / 39.37
        Case Else
            RecalculateBackLinear = Linear
    End Select


End Function

Sub ActivateMenu()
    
    MomIner.mnuActions.Enabled = (numNoOfElem > 0)
    MomIner.mnuPrint.Enabled = (numNoOfElem > 0)
    MomIner.mnuSave.Enabled = (numNoOfElem > 0)
    MomIner.mnuSaveAs.Enabled = (numNoOfElem > 0)
    MomIner.mnuCut.Enabled = (numNoOfElem > 0)
    MomIner.mnuCopy.Enabled = (numNoOfElem > 0)
    MomIner.mnuPaste.Enabled = (numNoOfElem > 0)
    MomIner.mnuDelete.Enabled = (numNoOfElem > 0)
    MomIner.mnuNext.Enabled = (numNoOfElem > 0)
    MomIner.mnuPrevious.Enabled = (numNoOfElem > 0)
    MomIner.mnuView.Enabled = (numNoOfElem > 0)

    MomIner.Toolbar.Buttons("Print_BT").Enabled = MomIner.mnuPrint.Enabled
    MomIner.Toolbar.Buttons("Calculate_BT").Enabled = MomIner.mnuActions.Enabled
    MomIner.Toolbar.Buttons("Cut_BT").Enabled = MomIner.mnuCut.Enabled
    MomIner.Toolbar.Buttons("Copy_BT").Enabled = MomIner.mnuCopy.Enabled
    MomIner.Toolbar.Buttons("Paste_BT").Enabled = MomIner.mnuPaste.Enabled
    MomIner.Toolbar.Buttons("Save_BT").Enabled = MomIner.mnuSave.Enabled

End Sub
Sub CalculateElement(Index As Integer)
    
    On Error Resume Next
    
    Select Case aryElemNames(Index)
    
        Case "Tor1"
            Call Tor1(aryTempElementData(1 + (Index - 1) * 18), Mass, aryVectorToCM(1), aryMomInerElement(1, 1))
    
        Case "Prim1"
            Call Prim1(aryTempElementData(1 + (Index - 1) * 18), Mass, aryVectorToCM(1), aryMomInerElement(1, 1))
        
        Case "Prim2"
            Call Prim2(aryTempElementData(1 + (Index - 1) * 18), Mass, aryVectorToCM(1), aryMomInerElement(1, 1))
    
    End Select
    
    
End Sub
Sub CopyElementDataToTemp()
    
    For j% = 1 To numNoOfElem
        For i% = 1 To 18
            aryTempElementData(i% + (j% - 1) * 18) = (aryMomIner(aryFirstData(j%) + i% - 1))
        Next i%
    Next j%

End Sub


Function RecalculateAngular(Angle As Single)
    
    Select Case strAngle
        Case "deg"
            RecalculateAngular = Angle * 180 / Pi
        Case Else
            RecalculateAngular = Angle
    End Select

End Function

Function RecalculateDensity(Density As Single)
    
    
    Select Case strMass
    
        Case "g"
            RecalculateDensity = Density * 1000
        
        Case "lb"
            RecalculateDensity = Density * 2.205
    
        Case Else
            RecalculateDensity = Density
            
    End Select
    
    Select Case strLinear
    
        Case "mm"
            RecalculateDensity = RecalculateDensity / 1000 ^ 3
            
        Case "cm"
            RecalculateDensity = RecalculateDensity / 100 ^ 3
            
        Case "in"
            RecalculateDensity = RecalculateDensity / 39.37 ^ 3
        
    End Select
    
End Function

Function RecalculateLinear(Linear As Single)
    
    Select Case strLinear
        Case "mm"
            RecalculateLinear = Linear * 1000
        Case "cm"
            RecalculateLinear = Linear * 100
        Case "in"
            RecalculateLinear = Linear * 39.37
        Case Else
            RecalculateLinear = Linear
    End Select

End Function

Function RecalculateMass(Mass As Single)
    Select Case strMass
    
        Case "g"
            RecalculateMass = Mass * 1000
        
        Case "lb"
            RecalculateMass = Mass * 2.205
    
        Case Else
            RecalculateMass = Mass
            
    End Select
End Function

Function RecalculateMomIner(IElem As Single)
    
    Select Case strMass
    
        Case "g"
            RecalculateMomIner = IElem * 1000
        
        Case "lb"
            RecalculateMomIner = IElem * 2.205
    
        Case Else
            RecalculateMomIner = IElem
            
    End Select
    
    Select Case strLinear
    
        Case "mm"
            RecalculateMomIner = RecalculateMomIner * 1000 ^ 2
            
        Case "cm"
            RecalculateMomIner = RecalculateMomIner * 100 ^ 2
            
        Case "in"
            RecalculateMomIner = RecalculateMomIner * 39.37 ^ 2
        
    End Select
End Function

Sub RedimensionArrays()
    ReDim Preserve aryMomIner((numNoOfElem + 1) * 20)
    ReDim Preserve aryElemNames(numNoOfElem + 1)
    ReDim Preserve aryFirstData(numNoOfElem + 1)
    ReDim Preserve aryTempElementData((numNoOfElem + 1) * 18)
End Sub

Sub ShowData(Index As Integer)

Dim Str(8)
    
    Select Case aryElemNames(Index)
    
        Case "Tor1"
            Str(1) = "R="
            Str(2) = "R1="
            Str(3) = "r="
            Str(4) = "H="
            Str(5) = "h="
            Str(6) = "Phi="
            Str(7) = ""
            Str(8) = ""
            
            ShowLabels (Str)
            Call ShowValues(5, 1)
            Call UpdateDataUnits(5, 1)
            
        Case "Prim1"
            Str(1) = "R="
            Str(2) = ""
            Str(3) = ""
            Str(4) = ""
            Str(5) = ""
            Str(6) = ""
            Str(7) = ""
            Str(8) = ""
            
            ShowLabels (Str)
            Call ShowValues(1, 0)
            Call UpdateDataUnits(1, 0)
     
        Case "Prim2"
            Str(1) = "a="
            Str(2) = "b="
            Str(3) = "c="
            Str(4) = ""
            Str(5) = ""
            Str(6) = ""
            Str(7) = ""
            Str(8) = ""
            
            ShowLabels (Str)
            Call ShowValues(3, 0)
            Call UpdateDataUnits(3, 0)
     
     End Select
End Sub
Sub LoadLargeToolbar()

Dim ToolbarLB As ListImage

Set ToolbarLB = MomIner.ToolbarImages.ListImages.Add(, "New_LB", LoadResPicture(101, 0))
Set ToolbarLB = MomIner.ToolbarImages.ListImages.Add(, "Open_LB", LoadResPicture(102, 0))
Set ToolbarLB = MomIner.ToolbarImages.ListImages.Add(, "Save_LB", LoadResPicture(103, 0))
Set ToolbarLB = MomIner.ToolbarImages.ListImages.Add(, "Print_LB", LoadResPicture(105, 0))
Set ToolbarLB = MomIner.ToolbarImages.ListImages.Add(, "Cut_LB", LoadResPicture(201, 0))
Set ToolbarLB = MomIner.ToolbarImages.ListImages.Add(, "Copy_LB", LoadResPicture(202, 0))
Set ToolbarLB = MomIner.ToolbarImages.ListImages.Add(, "Paste_LB", LoadResPicture(203, 0))
Set ToolbarLB = MomIner.ToolbarImages.ListImages.Add(, "Calculate_LB", LoadResPicture(301, 0))
Set ToolbarLB = MomIner.ToolbarImages.ListImages.Add(, "Help_LB", LoadResPicture(501, 0))
    
    MomIner.Toolbar.ImageList = MomIner.ToolbarImages
    
    MomIner.Toolbar.Buttons("New_BT").Image = "New_LB"
    MomIner.Toolbar.Buttons("Open_BT").Image = "Open_LB"
    MomIner.Toolbar.Buttons("Save_BT").Image = "Save_LB"
    MomIner.Toolbar.Buttons("Print_BT").Image = "Print_LB"
    MomIner.Toolbar.Buttons("Cut_BT").Image = "Cut_LB"
    MomIner.Toolbar.Buttons("Copy_BT").Image = "Copy_LB"
    MomIner.Toolbar.Buttons("Paste_BT").Image = "Paste_LB"
    MomIner.Toolbar.Buttons("Calculate_BT").Image = "Calculate_LB"
    MomIner.Toolbar.Buttons("Help_BT").Image = "Help_LB"
    
End Sub

Sub ProcError(Description As String)
Dim RetVal As Integer

    Select Case Description
        Case "Can't open file"
            RetVal = MsgBox("Can't open file: " + strFilename, 48)
            
        Case "Invalid file"
            RetVal = MsgBox("File contains unusable data", 48)
        
        Case "Invalid Data Number"
            RetVal = MsgBox("You should enter a NUMBER.", 48)
        
        Case "Invalid Element Name"
            RetVal = MsgBox("Element Name already exists." + Chr$(13) + Chr$(10) + _
            "Please enter different Element Name.", 48)
            
    End Select

End Sub
Sub ReadINI()

'All values are currently optional
    strPathFilename = App.Path
    
    strAngle = "rad"
    strLinear = "m"
    strMass = "kg"
    strAngleType = "Parameter"
    logParVecAng = True
    
    MomIner.mnuRecentFiles(1).Caption = strPathFilename + "\Samples\Example1.ind"
    MomIner.mnuRecentFiles(2).Caption = strPathFilename + "\Samples\Example2.ind"
    MomIner.mnuRecentFiles(3).Caption = strPathFilename + "\Samples\Example3.ind"
    MomIner.mnuRecentFiles(4).Caption = strPathFilename + "\Samples\Example4.ind"
    
End Sub
Sub SetIconNormal()
    Screen.MousePointer = 0
End Sub
Sub SetIconBusy()
    Screen.MousePointer = 11
End Sub

Sub NewFile()
    
    Unload Element
    Unload Insert
    Unload Results
    Unload ElementDrawing
    
    strFilename = "Untitled.ind"
    logFileNameGiven = False
    logNotSaved = False
    numNoOfElem = 0
    
    RedimensionArrays
    
    numLastElementShown = 1
        
    ActivateMenu
    
    aryMomIner(1) = "pero"
    
    Element.List.Clear
    
    SetName
    
End Sub
Sub OpenFile()
        
    On Error Resume Next
    
    ' Open the selected file.
    Open strFilename For Input As #1
       
    If Err Then
        ProcError ("Can't open file")
        Exit Sub
    End If
    
    ' Change the mouse pointer to an hourglass.
    SetIconBusy
    
    'Input data in variable
    ReDim aryMomIner(LOF(1))
    i% = 1
    MomIner.StatusBar.Panels(1).Text = "Reading"
    MomIner.StatusBar.Refresh
    MomIner.ProgressBar.Max = LOF(1)
    MomIner.ProgressBar.Value = 0
    MomIner.ProgressBar.Visible = True
    
    Do While Not EOF(1) ' Loop until end of file.
        Input #1, aryMomIner(i%)
        If InStr(aryMomIner(i%), "_") <> 0 Then
            For j% = 1 To Len(aryMomIner(i%))
                If Mid(aryMomIner(i%), j%, 1) = "_" Then
                    aryMomIner(i%) = Left(aryMomIner(i%), j% - 1) + " " + Right(aryMomIner(i%), Len(aryMomIner(i%)) - j%)
                End If
            Next j%
        End If
        MomIner.ProgressBar.Value = i%
        i% = i% + 1
    Loop

    Close #1
    
    ReDim Preserve aryMomIner(i% - 1)
        j% = 1
    For i% = 1 To UBound(aryMomIner)
        If Left(aryMomIner(i%), 1) = "*" Then
            ReDim Preserve aryElemNames(j%)
            ReDim Preserve aryFirstData(j%)
            aryElemNames(j%) = Mid(aryMomIner(i%), 2)
            aryFirstData(j%) = i% + 2
            j% = j% + 1
            i% = i% + 1
        End If
    Next i%
        
    MomIner.ProgressBar.Visible = False
    MomIner.StatusBar.Panels(1).Text = "Ready"
    SetIconNormal
    
    If j% = 1 Then
        ProcError ("Invalid file")
        Err = True
        Exit Sub
    End If
    
    numNoOfElem = j% - 1
    numNoOfElemTemp = j% - 1
    
    logNotSaved = False
    logFileNameGiven = True
    
    numLastElementShown = 1
    
    Err = False

End Sub
Sub PathFileName()
    Dim Temp As String
    Temp = strFilename
    For i% = 1 To Len(Temp)
        TempHere% = InStr(Here% + 1, Temp, "\")
        If TempHere% > 0 Then
            Here% = TempHere%
        Else
            strPathFilename = Left(Temp, Here% - 1)
            strFilename = Right(Temp, Len(Temp) - Here%)
            Exit Sub
        End If
    Next i%
End Sub



Sub SetName()
    ' Set the form's caption.
    MomIner.Caption = "Body Mass Properties - " + UCase(strFilename)
End Sub

Sub SaveFile()

Dim Temp As String
    
    On Error Resume Next
    
    ' Open the file.
    Open strFilename For Output As #1
    
    ' Display the hourglass mouse pointer.
    SetIconBusy
    
    ' Write the variable contents to a saved file.
    MomIner.StatusBar.Panels(1).Text = "Saving"
    MomIner.StatusBar.Refresh
    MomIner.ProgressBar.Value = 0
    MomIner.ProgressBar.Max = UBound(aryMomIner)
    MomIner.ProgressBar.Visible = True
    For i% = 1 To numNoOfElem
        Print #1, aryMomIner((i% - 1) * 20 + 1)
        Temp = aryMomIner((i% - 1) * 20 + 2)
        For j% = 1 To Len(Temp)
            a% = InStr(Temp, " ")
            If a% <> 0 Then
                Temp = Left(Temp, a% - 1) + "_" + Right(Temp, Len(Temp) - a%)
            Else
                Exit For
            End If
        Next j%
        Print #1, Temp
        For j% = 1 To 18
            Temp = aryMomIner((i% - 1) * 20 + 2 + j%)
            a% = InStr(Temp, ",")
            If a% <> 0 Then
               Temp = Left(Temp, a% - 1) + "." + Right(Temp, Len(Temp) - a%)
            End If
            Print #1, Temp
        Next j%
        MomIner.ProgressBar.Value = i% * 20
    Next i%
    MomIner.ProgressBar.Visible = False
    MomIner.StatusBar.Panels(1).Text = "Ready"
    Close #1
    
    ' Reset the mouse pointer.
    SetIconNormal
    
    logNotSaved = False
    
    Err = False
    
End Sub

Sub ShowDensity()
    
'    If aryTempElementData(18) = 0 Then
'
'        Element.TextElement(32).Visible = False
'        Element.Label(38).Visible = False
'        Element.Label(39).Visible = False
'
'        Element.TextElement(17) = RecalculateDensity(aryTempElementData(17 + (numLastElementShown - 1) * 18))
'        Element.Label(29) = strMass + "/" + strLinear + "^3"
'
'    Else
    
        Element.TextElement(17) = RecalculateDensity(aryTempElementData(17 + (numLastElementShown - 1) * 18))
        Element.TextElement(32) = RecalculateLinear(aryTempElementData(18 + (numLastElementShown - 1) * 18))
        Element.Label(29) = strMass + "/" + strLinear + "^3"
        Element.Label(39) = strLinear
        
        Element.TextElement(32).Visible = True
        Element.Label(38).Visible = True
        Element.Label(39).Visible = True
    
'    End If

End Sub

Sub ShowElementResults()
    
    On Error Resume Next
    
    EnableResultElement
    
    If aryTempElementData(17 + (numLastElementShown - 1) * 18) <> 0 Then
        Element.TextElement(18) = RecalculateMass(Mass) / RecalculateDensity(aryTempElementData(17 + (numLastElementShown - 1) * 18))
    End If
    
    Element.Label(31) = strLinear + "^3"
    Element.TextElement(19) = RecalculateMass(Mass)
    Element.Label(33) = strMass
    
    Element.TextElement(20) = RecalculateLinear(aryVectorToCM(1))
    Element.TextElement(22) = RecalculateLinear(aryVectorToCM(2))
    Element.TextElement(21) = RecalculateLinear(aryVectorToCM(3))
    Element.Label(35) = strLinear

    Element.TextElement(23) = RecalculateMomIner(aryMomInerElement(1, 1))
    Element.TextElement(24) = RecalculateMomIner(aryMomInerElement(1, 2))
    Element.TextElement(25) = RecalculateMomIner(aryMomInerElement(1, 3))
    Element.TextElement(27) = RecalculateMomIner(aryMomInerElement(2, 2))
    Element.TextElement(28) = RecalculateMomIner(aryMomInerElement(2, 3))
    Element.TextElement(31) = RecalculateMomIner(aryMomInerElement(3, 3))
    Element.TextElement(26) = Element.TextElement(24)
    Element.TextElement(29) = Element.TextElement(25)
    Element.TextElement(30) = Element.TextElement(28)
    Element.Label(37) = strMass + strLinear + "^2"

End Sub

Sub ShowResults()

Dim AnglesE(3) As Single
Dim AnglesD(3) As Single
Dim Eparam(4) As Single
Dim Vec(3) As Single
Dim Ang As Single

    On Error Resume Next
    
    EnableResult
    
    Results.TextMass(1) = numNoOfElem
    Results.TextMass(2) = RecalculateMass(TotalMass)
    Results.LabelMass(3) = strMass
    
    Results.TextMass(4) = RecalculateLinear(aryTotalVectorToCM(1))
    Results.TextMass(3) = RecalculateLinear(aryTotalVectorToCM(2))
    Results.TextMass(5) = RecalculateLinear(aryTotalVectorToCM(3))
    Results.LabelMass(5) = strLinear
    
    For i% = 1 To 3
        For j% = 1 To 3
            Results.TextMomIner((i% - 1) * 3 + j%) = RecalculateMomIner(aryTotalMomIner(i%, j%))
        Next j%
    Next i%
    
    For i% = 1 To 3
        For j% = 1 To 3
            Results.TextMomIner((i% - 1) * 3 + j% + 9) = RecalculateMomIner(aryTotalMainMomIner(i%, j%))
        Next j%
    Next i%
    Results.LabelMomIner(3) = strMass + strLinear + "^2"
    Results.LabelMomIner(4) = strMass + strLinear + "^2"
    
    For i% = 1 To 3
        For j% = 1 To 3
            Results.TextMomIner((i% - 1) * 3 + j% + 22) = aryL(i%, j%)
        Next j%
    Next i%
    
    Select Case strAngleType
        
        Case "Euler"
            Results.LabelMomIner(6) = "Euler Angles"
            
            Results.LabelMomIner(11).Visible = True
            Results.LabelMomIner(10).Visible = False
            Results.LabelMomIner(13).Visible = False
            Results.TextMomIner(22).Visible = False
            
            Results.LabelMomIner(7) = "Phi"
            Results.LabelMomIner(8) = "Theta"
            Results.LabelMomIner(9) = "Psi"
            
            Call LToEuler(aryL(1, 1), AnglesE(1))
            
            Results.TextMomIner(19) = RecalculateAngular(AnglesE(1))
            Results.TextMomIner(20) = RecalculateAngular(AnglesE(2))
            Results.TextMomIner(21) = RecalculateAngular(AnglesE(3))
            
            Results.LabelMomIner(11) = strAngle
                
        Case "DeSparre"
            Results.LabelMomIner(6) = "DeSparre Angles"
            
            Results.LabelMomIner(11).Visible = True
            Results.LabelMomIner(10).Visible = False
            Results.LabelMomIner(13).Visible = False
            Results.TextMomIner(22).Visible = False
            
            Results.LabelMomIner(7) = "Phi"
            Results.LabelMomIner(8) = "Theta"
            Results.LabelMomIner(9) = "Psi"
            
            Call LToDeSparr(aryL(1, 1), AnglesD(1))
            
            Results.TextMomIner(19) = RecalculateAngular(AnglesD(1))
            Results.TextMomIner(20) = RecalculateAngular(AnglesD(2))
            Results.TextMomIner(21) = RecalculateAngular(AnglesD(3))
            
            Results.LabelMomIner(11) = strAngle
        
        Case "Parameter"
            Results.LabelMomIner(6) = "Hamilton-Rodriguez Parameters"
                        
            If logParVecAng = True Then
            
                Results.LabelMomIner(11).Visible = False
                Results.LabelMomIner(10).Visible = True
                Results.LabelMomIner(13).Visible = False
                Results.TextMomIner(22).Visible = True
                
                Results.LabelMomIner(10) = "e0"
                Results.LabelMomIner(7) = "e1"
                Results.LabelMomIner(8) = "e2"
                Results.LabelMomIner(9) = "e3"
            
                Call LToParameter(aryL(1, 1), Eparam(1))
                
                Results.TextMomIner(19) = Eparam(2)
                Results.TextMomIner(20) = Eparam(3)
                Results.TextMomIner(21) = Eparam(4)
                Results.TextMomIner(22) = Eparam(1)
            
            Else
                
                Results.LabelMomIner(11).Visible = True
                Results.LabelMomIner(10).Visible = True
                Results.LabelMomIner(13).Visible = True
                Results.TextMomIner(22).Visible = True
                
                Results.LabelMomIner(10) = "Hi"
                Results.LabelMomIner(7) = "u1"
                Results.LabelMomIner(8) = "u2"
                Results.LabelMomIner(9) = "u3"
                
                Call LToParameter(aryL(1, 1), Eparam(1))
                Call ParameterToVecAng(Eparam(1), Vec(1), Ang)
                
                Results.TextMomIner(22) = RecalculateAngular(Ang)
                Results.TextMomIner(19) = RecalculateLinear(Vec(1))
                Results.TextMomIner(20) = RecalculateLinear(Vec(2))
                Results.TextMomIner(21) = RecalculateLinear(Vec(3))
                    
                Results.LabelMomIner(11) = strLinear
                Results.LabelMomIner(13) = strAngle
                
    
            End If
     End Select

End Sub

Sub ShowLabels(Str)
    
    For i% = 1 To 8
        If Str(i%) = "" Then
            Element.Label(i%).Visible = False
            Element.TextElement(i%).Visible = False
            Element.Label(i% + 8).Visible = False
        Else
            Element.Label(i%) = Str(i%)
            Element.Label(i%).Visible = True
            Element.TextElement(i%).Visible = True
            Element.Label(i% + 8).Visible = True
        End If
    Next i%
    
End Sub
Sub ShowPicture(FormName As Form, strName As String)
    
    FormName.PictureElement.Picture = LoadPicture(App.Path + "\Drawings\" + strName + ".wmf")
    ElementDrawing.PictureBox.Picture = FormName.PictureElement.Picture
    
End Sub

Sub ShowPosition()

On Error Resume Next

Dim AnglesE(3) As Single
Dim AnglesD(3) As Single
Dim Vec(3) As Single
Dim Ang As Single

    Element.TextElement(9) = aryTempElementData(9 + (numLastElementShown - 1) * 18)
    Element.TextElement(10) = RecalculateLinear(aryTempElementData(10 + (numLastElementShown - 1) * 18))
    Element.TextElement(11) = RecalculateLinear(aryTempElementData(11 + (numLastElementShown - 1) * 18))
    Element.TextElement(12) = RecalculateLinear(aryTempElementData(12 + (numLastElementShown - 1) * 18))
    Element.Label(19) = strLinear
    
    Select Case strAngleType
        Case "Euler"
            Element.Label(21) = "Euler Angles"
            
            Element.Label(25).Visible = True
            Element.Label(26).Visible = False
            Element.Label(27).Visible = False
            Element.TextElement(16).Visible = False
            
            Element.Label(22) = "Phi"
            Element.Label(23) = "Theta"
            Element.Label(24) = "Psi"
            
            Call ParameterToEuler(aryTempElementData(13 + (numLastElementShown - 1) * 18), AnglesE(1))
            
            Element.TextElement(13) = RecalculateAngular(AnglesE(1))
            Element.TextElement(14) = RecalculateAngular(AnglesE(2))
            Element.TextElement(15) = RecalculateAngular(AnglesE(3))
            
            Element.Label(25) = strAngle
                
        Case "DeSparre"
            Element.Label(21) = "DeSparre Angles"
            
            Element.Label(25).Visible = True
            Element.Label(26).Visible = False
            Element.Label(27).Visible = False
            Element.TextElement(16).Visible = False
            
            Element.Label(22) = "Phi"
            Element.Label(23) = "Theta"
            Element.Label(24) = "Psi"
            
            Call ParameterToDeSparr(aryTempElementData(13 + (numLastElementShown - 1) * 18), AnglesD(1))
            
            Element.TextElement(13) = RecalculateAngular(AnglesD(1))
            Element.TextElement(14) = RecalculateAngular(AnglesD(2))
            Element.TextElement(15) = RecalculateAngular(AnglesD(3))
            
            Element.Label(25) = strAngle
        
        Case "Parameter"
            Element.Label(21) = "Hamilton-Rodriguez Parameters"
                        
            If logParVecAng = True Then
            
                Element.Label(25).Visible = False
                Element.Label(26).Visible = True
                Element.Label(27).Visible = False
                Element.TextElement(16).Visible = True
                
                Element.Label(26) = "e0"
                Element.Label(22) = "e1"
                Element.Label(23) = "e2"
                Element.Label(24) = "e3"
            
                Element.TextElement(13) = aryTempElementData(14 + (numLastElementShown - 1) * 18)
                Element.TextElement(14) = aryTempElementData(15 + (numLastElementShown - 1) * 18)
                Element.TextElement(15) = aryTempElementData(16 + (numLastElementShown - 1) * 18)
                Element.TextElement(16) = aryTempElementData(13 + (numLastElementShown - 1) * 18)
            
            Else
                
                Element.Label(25).Visible = True
                Element.Label(26).Visible = True
                Element.Label(27).Visible = True
                Element.TextElement(16).Visible = True
                
                Element.Label(26) = "Hi"
                Element.Label(22) = "u1"
                Element.Label(23) = "u2"
                Element.Label(24) = "u3"
                
                Call ParameterToVecAng(aryTempElementData(13 + (numLastElementShown - 1) * 18), Vec(1), Ang)
                
                Element.TextElement(16) = RecalculateAngular(Ang)
                Element.TextElement(13) = RecalculateLinear(Vec(1))
                Element.TextElement(14) = RecalculateLinear(Vec(2))
                Element.TextElement(15) = RecalculateLinear(Vec(3))
                    
                Element.Label(25) = strLinear
                Element.Label(27) = strAngle
                
    
            End If
            
        End Select
End Sub

Sub ShowValues(numLinear As Integer, numAngular As Integer)

    For i% = 1 To numLinear
        Element.TextElement(i%) = RecalculateLinear(aryTempElementData(i% + (numLastElementShown - 1) * 18))
    Next i%
    
    For i% = numLinear + 1 To numLinear + numAngular
        Element.TextElement(i%) = RecalculateAngular(aryTempElementData(i% + (numLastElementShown - 1) * 18))
    Next i%
    
End Sub
Sub UpdateDataUnits(numLinear As Integer, numAngular As Integer)

    For i% = 1 To numLinear
        Element.Label(i% + 8) = strLinear
    Next i%
    
    For i% = numLinear + 1 To numLinear + numAngular
        Element.Label(i% + 8) = strAngle
    Next i%

End Sub

Sub UpdateFileMenu()
    For i% = 1 To 4
        If MomIner.mnuRecentFiles(i%).Caption = strPathFilename + "\" + strFilename Then
            For j% = i% To 2 Step -1
                MomIner.mnuRecentFiles(j%).Caption = MomIner.mnuRecentFiles(j% - 1).Caption
            Next j%
            MomIner.mnuRecentFiles(1).Caption = strPathFilename + "\" + strFilename
            Exit Sub
        End If
    Next i%
    For i% = 4 To 2 Step -1
        MomIner.mnuRecentFiles(i%).Caption = MomIner.mnuRecentFiles(i% - 1).Caption
    Next i%
    MomIner.mnuRecentFiles(1).Caption = strPathFilename + "\" + strFilename
End Sub

Sub UpdateOptionsMenu()
    Select Case strAngle
        Case "rad"
            MomIner.mnuRad.Checked = True
            MomIner.mnuDeg.Checked = False
        Case Else
            MomIner.mnuDeg.Checked = True
            MomIner.mnuRad.Checked = False
    End Select
    
    Select Case strLinear
        Case "mm"
            MomIner.mnuMm.Checked = True
            MomIner.mnuCm.Checked = False
            MomIner.mnuM.Checked = False
            MomIner.mnuInch.Checked = False
        Case "cm"
            MomIner.mnuMm.Checked = False
            MomIner.mnuCm.Checked = True
            MomIner.mnuM.Checked = False
            MomIner.mnuInch.Checked = False
        Case "m"
            MomIner.mnuMm.Checked = False
            MomIner.mnuCm.Checked = False
            MomIner.mnuM.Checked = True
            MomIner.mnuInch.Checked = False
        Case Else
            MomIner.mnuMm.Checked = False
            MomIner.mnuCm.Checked = False
            MomIner.mnuM.Checked = False
            MomIner.mnuInch.Checked = True
    End Select
    
    Select Case strMass
        Case "kg"
            MomIner.mnuKg.Checked = True
            MomIner.mnuG.Checked = False
            MomIner.mnuLb.Checked = False
        Case "g"
            MomIner.mnuKg.Checked = False
            MomIner.mnuG.Checked = True
            MomIner.mnuLb.Checked = False
        Case Else
            MomIner.mnuKg.Checked = False
            MomIner.mnuG.Checked = False
            MomIner.mnuLb.Checked = True
    End Select
    
    Select Case strAngleType
        Case "Euler"
            MomIner.mnuEuler.Checked = True
            MomIner.mnuDeSparr.Checked = False
            MomIner.mnuCoefficients.Checked = False
            MomIner.mnuVecAng.Checked = False
        Case "DeSparre"
            MomIner.mnuEuler.Checked = False
            MomIner.mnuDeSparr.Checked = True
            MomIner.mnuCoefficients.Checked = False
            MomIner.mnuVecAng.Checked = False
        Case Else
            MomIner.mnuEuler.Checked = False
            MomIner.mnuDeSparr.Checked = False
            If logParVecAng Then
                MomIner.mnuCoefficients.Checked = True
                MomIner.mnuVecAng.Checked = False
            Else
                MomIner.mnuCoefficients.Checked = False
                MomIner.mnuVecAng.Checked = True
            End If
        End Select
    
End Sub

