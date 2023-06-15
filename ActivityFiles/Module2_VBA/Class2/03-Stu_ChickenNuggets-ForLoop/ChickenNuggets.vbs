Sub IterateText():

    ' Define the iterator
    Dim i As Integer

    ' Use Cells with the iterator as the row and part of the count to complete cells
    For i = 1 to 10
    Cells(i,1).Value = "I will eat"
    Cells(i,2).Value = 10+i
    Cells(i,3).Value = "Chicken Nuggets"
    Next i

End Sub

Sub IterateText2():

    ' Define the iterator
    Dim i As Integer

    ' Use Range with the iterator as the row and part of the count to complete cells
    For i = 1 to 10
    Range("A" & i).Value = "I will eat"
    Range("B" & i).Value = 10+i
    Range("C" & i).Value = "Chicken Nuggets"
    Next i

End Sub