' * If the score is 90 or higher:
'   * Add the text “Pass” to the Pass/Warning/Fail cell.
'   * Add an "A" in the letter grade cell.
'   * Fill the Pass/Warning/Fail cell with the color green.

' Note Range().Font.ColorIndex = # to change font color

Sub Grader()

    Dim GradeNum As Double
    GradeNum = Range("B2").Value

    If GradeNum >= 90 Then
        Range("C2").Value = "Pass"
        Range("D2").Value = "A"
        Range("C2").Interior.ColorIndex = 4
    ElseIf GradeNum >= 80 Then
        Range("C2").Value = "Pass"
        Range("D2").Value = "B"
        Range("C2").Interior.ColorIndex = 4
    ElseIf GradeNum >= 70 Then
        Range("C2").Value = "Warning"
        Range("D2").Value = "C"
        Range("C2").Interior.ColorIndex = 6
    Else
        Range("C2").Value = "Fail"
        Range("D2").Value = "F"
        Range("C2").Interior.ColorIndex = 3
    End If

End Sub

' Create a second button that resets the grades to the original state and then establishes the previous grade in a row labeled "Last Grade."

Sub LogReset()

    ' Copy the previous grade values to the next row
    Range("B2:D2").Copy Range("B3:D3")
    ' Copy the formatting from the previous cell range to the next row
    Range("B2:D2").Copy
    Range("B3:D3").PasteSpecial Paste:=xlPasteFormats
    ' Clear the values of the original row
    Range("B2:D2").ClearContents
    ' Clear the formatting of the original row
    Range("B2:D2").ClearFormats

End Sub