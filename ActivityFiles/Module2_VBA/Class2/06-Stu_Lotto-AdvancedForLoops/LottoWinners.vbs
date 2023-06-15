Sub LottoWinners():

    'This code assumes unique values in Lotto Number column!!!!!!!!!!!!
    ' The class solution does NOT declare names but just fills them within Excel

    ' Declare Winner Variables
    Dim Num1 As Long
    Dim First1 As String
    Dim Last1 as String
    Dim Num2 As Long
    Dim First2 As String
    Dim Last2 as String
    Dim Num3 As Long
    Dim First3 As String
    Dim Last3 as String
    
    ' Assign winning numbers
    Num1 = 3957481
    Num2 = 5865187
    Num3 = 2817729

    'Search for winners - If there is more than one, this will only store the last
    For i = 2 to 1001

        If (Cells(i,3).Value = Num1) Then
            First1 = Cells(i,1).Value
            Last1 = Cells(i,2).Value
        
        ElseIf (Cells(i,3).Value = Num2) Then
            First2 = Cells(i,1).Value
            Last2 = Cells(i,2).Value
        
        ElseIf (Cells(i,3).Value = Num3) Then
            First3 = Cells(i,1).Value
            Last3 = Cells(i,2).Value
                
        End If       
    
    Next i

    ' search for runner up, this exits when the first one is found (vs. last if there are duplicates of the above)
    For i = 2 to 1001
            If (Cells(i,3).Value = 2275339) Or (Cells(i,3).Value = 5868182) Or (Cells(i,3).Value = 1841402) Then
                Range("F5").Value = Cells(i,1).Value
                Range("G5").Value = Cells(i,2).Value
                Range("H5").Value = Cells(i,3).Value
                Exit For 
            End If
    Next i

    ' Record winners with numbers
    Range("F2").Value = First1
    Range("G2").Value = Last1
    Range("H2").Value = Num1
    Range("F3").Value = First2
    Range("G3").Value = Last2
    Range("H3").Value = Num2
    Range("F4").Value = First3
    Range("G4").Value = Last3
    Range("H4").Value = Num3

    MsgBox ("Winner is " + First1 + " " + Last1)

End Sub