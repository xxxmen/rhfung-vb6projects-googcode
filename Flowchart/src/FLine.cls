VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "FLine"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Attribute VB_Ext_KEY = "SavedWithClassBuilder" ,"Yes"
Attribute VB_Ext_KEY = "Top_Level" ,"Yes"
Option Explicit
'Richard Fung.  August 12, 2000.

Implements FlowItem
Private mobjProp As Properties

Const conLinExSpace = 5 'extra space for line text


Private Sub Class_Initialize()
    Set mobjProp = New Properties
End Sub

Private Sub Class_Terminate()
    Set mobjProp = Nothing
End Sub


Private Property Get FlowItem_CanRefresh() As Boolean
    'nothing to do
End Property

Private Property Get FlowItem_Description() As String
    FlowItem_Description = "Line"
End Property


Private Property Get FlowItem_DescriptionF() As String
    'nothing to do
End Property


'Private Property Get FlowItem_CenterX() As Single
'    FlowItem_CenterX = mobjProp.CenterX
'End Property

'Private Property Get FlowItem_CenterY() As Single
'    FlowItem_CenterY = mobjProp.CenterY
'End Property


Private Function FlowItem_Draw(ByVal View As Object, ByVal Parent As FlowChart) As Long
    SetDrawProps View, Me, Parent
    'Override command here.
    View.Line (mobjProp.Left, mobjProp.Top)-Step(mobjProp.Width, mobjProp.Height)
    
    DrawTextForLines View, Me, Parent
    'calculate position of X, Y for text
    'calculate position of X, Y for text
'    If mobjProp.Width = 0 Then
'        View.CurrentY = mobjProp.CenterY - View.TextHeight(mobjProp.Text) / 2
'    Else
'        If mobjProp.Height < 0 Then 'Y
'            View.CurrentY = mobjProp.CenterY + conLinExSpace
'        Else
'            View.CurrentY = mobjProp.CenterY - View.TextHeight(mobjProp.Text) - conLinExSpace
'        End If
'    End If
'    If mobjProp.Height = 0 Then
'        View.CurrentX = mobjProp.CenterX - View.TextWidth(mobjProp.Text) / 2
'    Else
'        If mobjProp.Width < 0 Then 'X
'            View.CurrentX = mobjProp.CenterX - View.TextWidth(mobjProp.Text) - conLinExSpace
'        Else
'            View.CurrentX = mobjProp.CenterX + conLinExSpace
'        End If
'    End If
'    'draw text
'    SetFontProps View, Me, Parent
'    'View.ForeColor = mobjProp.TextColour
'    View.Print mobjProp.Text
End Function

Private Property Get FlowItem_Number() As FAddType
    FlowItem_Number = conAddLine
End Property

Private Property Set FlowItem_P(ByVal RHS As Properties)
    Set mobjProp = RHS
End Property

Private Property Get FlowItem_P() As Properties
    Set FlowItem_P = mobjProp
End Property

Private Sub FlowItem_Refresh(ByVal Parent As FlowChart, ByVal View As Object)
    'nothing to do
End Sub

Private Property Get FlowItem_TextBottomMrg() As Single
    FlowItem_TextBottomMrg = 0
End Property

Private Property Get FlowItem_TextLeftMrg() As Single
    FlowItem_TextLeftMrg = 0
End Property

Private Property Get FlowItem_TextRightMrg() As Single
    FlowItem_TextRightMrg = 0
End Property

Private Property Get FlowItem_TextTopMrg() As Single
    FlowItem_TextTopMrg = 0
End Property


