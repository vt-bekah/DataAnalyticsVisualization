Sub forLoop()

Dim i As Integer
    For i = 1 to 20
        'Place a value of in in A1 to A20
        Cells(i, 1).Value = 1
        ' Place a value of 5 in A1 to T1
        Cells(1, i).Value = 5
        'Place increasing values based upon the variable "i" in B2 to B21
        Cells(i + 1, 2).Value = i + 1
    Next i
End Sub