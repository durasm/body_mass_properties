Attribute VB_Name = "Declarations"
Option Base 1

Public logNotSaved As Boolean
Public logFileNameGiven As Boolean
Public logParVecAng As Boolean
Public numNoOfElem As Integer
Public numNoOfElemTemp As Integer
Public numLastElementShown As Integer
Public Pi As Single
Public Mass As Single
Public TotalMass As Single
Public strFilename As String
Public strPathFilename As String
Public strAngle As String
Public strLinear As String
Public strMass As String
Public strAngleType As String

Public aryFirstData() As Integer
Public aryVectorToCM(3) As Single
Public aryTotalVectorToCM(3) As Single
Public aryMomInerElement(3, 3) As Single
Public aryTotalMomIner(3, 3) As Single
Public aryTotalMainMomIner(3, 3) As Single
Public aryL(3, 3) As Single
Public aryMass() As Single
Public aryVectorsToCM() As Single
Public aryTempElementData() As Single
Public aryElemNames() As String
Public aryMomIner() As Variant

Public Declare Sub ParameterToEuler Lib "MehLeta.dll" (Parameter As Single, AnglesE As Single)
Public Declare Sub ParameterToDeSparr Lib "MehLeta.dll" (Parameter As Single, AnglesD As Single)
Public Declare Sub ParameterToVecAng Lib "MehLeta.dll" (Parameter As Single, Vec As Single, Ang As Single)

Public Declare Sub EulerToParameter Lib "MehLeta.dll" (AnglesE As Single, Parameter As Single)
Public Declare Sub DeSparrToParameter Lib "MehLeta.dll" (AnglesD As Single, Parameter As Single)
Public Declare Sub VecAngToParameter Lib "MehLeta.dll" (Vec As Single, Ang As Single, Parameter As Single)

Public Declare Sub LToParameter Lib "MehLeta.dll" (L As Single, Parameter As Single)
Public Declare Sub LToEuler Lib "MehLeta.dll" (L As Single, AnglesE As Single)
Public Declare Sub LToDeSparr Lib "MehLeta.dll" (L As Single, AnglesD As Single)

Public Declare Sub SteinerFromCM Lib "MehLeta.dll" (Iin As Single, CMvect As Single, Mass As Single, Iout As Single)
Public Declare Sub MainInerMom Lib "MehLeta.dll" (Iin As Single, L As Single, Iout As Single)


Public Declare Sub Tor1 Lib "ElemTabl.dll" (ElementData As Single, Mass As Single, aryVectorToCM As Single, aryMomInerElement As Single)

Public Declare Sub Prim1 Lib "ElemTabl.dll" (ElementData As Single, Mass As Single, aryVectorToCM As Single, aryMomInerElement As Single)
Public Declare Sub Prim2 Lib "ElemTabl.dll" (ElementData As Single, Mass As Single, aryVectorToCM As Single, aryMomInerElement As Single)

Sub Main()
    
    ReadINI
    
    Pi = 3.1415927
    
    NewFile
    
    MomIner.Show

End Sub
