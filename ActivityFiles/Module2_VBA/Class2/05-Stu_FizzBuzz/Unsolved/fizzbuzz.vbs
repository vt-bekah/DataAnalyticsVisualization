Sub FizzBuzz():

    'this is the general structure but do not know how to point to particular column and then reference the cell of the moment...

    for i = 2 to 100

        ' alternatively the class solution assigns a variable to Cells(i,1)

        If (Cells(i,1).Value Mod 3 = 0) And (Cells(i,1).Value Mod 5 = 0) Then
            ' print Fizzbuzz in column 2
            Cells(i, 2).Value = "Fizzbuzz"
        
        ElseIf Cells(i,1).Value Mod 3 = 0 Then
            ' print Fizz in column 2
            Cells(i, 2).Value = "Fizz"
        
        ElseIf Cells(i,1).Value Mod 5 = 0 Then
            ' print Buzz in column 2
            Cells(i, 2).Value = "Buzz"
        
        End If
    
    Next i

End Sub

'-----------I wanted to NOT hard code row count but not know how------------------

    ' While Not ActiveCell = ""

    '     If (Cells().Value Mod 3 = 0) And (Cells().Value Mod 5 = 0) Then
    '         ' print Fizzbuzz in column 2
        
    '     ElseIf Cells().Value Mod 3 = 0 Then
    '         ' print Fizz in column 2
        
    '     ElseIf Cells().Value Mod 5 = 0 Then
    '         ' print Buzz in column 2
        
    '     Else
    '         ' no instructions...
        
    '     End If

'---------------StackOverflow example with different contect-------------------
' Sub ScatterSeries()

' Range("A1").Activate

' Serie = 1

' While Not ActiveCell = ""

'     ActiveSheet.ChartObjects("Chart 1").Activate
'     ActiveChart.PlotArea.Select
'     ActiveChart.SeriesCollection.NewSeries
'     ActiveChart.SeriesCollection(Serie).Name = ActiveCell.Value
'     ActiveChart.SeriesCollection(Serie).XValues = ActiveCell.Offset(0, 2).Value
'     ActiveChart.SeriesCollection(Serie).Values = ActiveCell.Offset(0, 1).Value

'     Serie = Serie + 1

'     ActiveCell.Offset(1, 0).Activate
' Wend

' End Sub