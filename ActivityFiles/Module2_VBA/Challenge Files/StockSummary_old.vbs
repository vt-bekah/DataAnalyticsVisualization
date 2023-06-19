Sub WorksheetLoop()

    ' iterate through each sheet
    For j = 1 To ActiveWorkbook.Worksheets.count
        
        Dim RowCount As Integer
        Dim ColCount As Integer
        
        ' Using the With function to avoid cluttering code by repeatedly typing ActiveWorkbook.Worksheets(j)
        With ActiveWorkbook.Worksheets(j)
            ' store the row count of current sheet
            RowCount = .Cells(.Rows.count, 1).End(xlUp).Row
            ' store the column count of current sheet
            ColCount = .Cells(1, .Columns.count).End(xlToLeft).Column
            ' add headers for new columns and AutoFit
            .Cells(1, 9).Value = "Ticker"
            .Cells(1, 10).Value = "Yearly Change"
            .Cells(1, 11).Value = "Percent Change"
            .Cells(1, 12).Value = "Total Stock Volume"
            .Columns("I:M").Columns.AutoFit
        
        ' Declare array to hold unique tickers
        Dim UniqueTick() As String
        Dim count As Integer
        count = 0
        
        ' go through all rows and add to the UniqueTick array if a new one is found
        For i = 2 To RowCount
            Dim known As Boolean
            known = False
            
            'add the first one to the array
            If i = 2 Then
                ReDim Preserve UniqueTick(count)
                UniqueTick(count) = .Cells(i, 1).Value
                count = count + 1
            ' otherwise, brute force iterate through the current Ticker array to see if there is a match before adding a new value
            Else
                For k = 0 To UBound(UniqueTick)
                    If .Cells(i, 1).Value = UniqueTick(k) Then
                        known = True
                    End If
                Next k
                
                If known = False Then
                    ReDim Preserve UniqueTick(count)
                    UniqueTick(count) = .Cells(i, 1).Value
                    count = count + 1
                End If
                
            End If
        
        Next i
        
        'populate Ticker column
        For i = 0 To UBound(UniqueTick)
            .Cells(i + 2, 9).Value = UniqueTick(i)
        Next i
        
        End With
        
    Next j

End Sub

