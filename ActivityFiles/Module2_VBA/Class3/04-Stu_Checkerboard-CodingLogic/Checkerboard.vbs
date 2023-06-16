Sub Checkerboard()

    ' go across rows
    For i = 1 To 8
    
        'go down columns
        For j = 1 To 8
            
            ' check whether sum of index is odd or even (red cells should be even and odd black)
            If (i + j) Mod 2 = 0 Then
                Cells(i, j).Interior.ColorIndex = 3
                Cells(i, j).Font.ColorIndex = 1
            Else
                Cells(i, j).Interior.ColorIndex = 1
                Cells(i, j).Font.ColorIndex = 2
            End If
                        
        Next j
    
    Next i

End Sub