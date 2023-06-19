Sub WorksheetLoop()

    ' Iterate through each sheet
    For Each ws in Worksheets

        ' Populate new headers
        ws.Cells(1, 9).Value = "Ticker"
        ws.Cells(1, 10).Value = "Yearly Change"
        ws.Cells(1, 11).Value = "Percent Change"
        ws.Cells(1, 12).Value = "Total Stock Volume"
        ws.Columns("I:M").Columns.AutoFit
        
        ' Declare and assign RowCount to accomodate different data sizes by sheet
        Dim RowCount As Integer
        RowCount = ws.Cells(Rows.Count, 1).End(xlUp).Row
        
        ' Declare dynamic array to hold unique tickers and counter (storing each in an array allows for unordered data)
        Dim UniqueTick() As String
        Dim count As Integer
        count = 0
        
        ' go through all rows and add to the UniqueTick array if a new one is found
        For i = 2 To RowCount
            Dim known As Boolean
            known = False
            
            'add the first one to the array for a smooth start
            If i = 2 Then
                ReDim Preserve UniqueTick(count)
                UniqueTick(count) = ws.Cells(i, 1).Value
                count = count + 1
            ' otherwise, brute force iterate through the current Ticker array to see if there is a match before adding a value
            Else
                For j = 0 To UBound(UniqueTick)
                    If ws.Cells(i, 1).Value = UniqueTick(j) Then
                        known = True
                    End If
                Next j
                
                If known = False Then
                    ReDim Preserve UniqueTick(count)
                    UniqueTick(count) = ws.Cells(i, 1).Value
                    count = count + 1
                End If
                
            End If
        
        Next i
        
        'populate Ticker column
        For i = 0 To UBound(UniqueTick)
            ws.Cells(i + 2, 9).Value = UniqueTick(i)
        Next i
        
        ' Yearly change from the opening price at the beginning of a given year to the closing price at the end of that year.


        ' The percentage change from the opening price at the beginning of a given year to the closing price at the end of that year.


        ' The total stock volume of the stock. Iterate through the unique array to touch each one which iterates through all the raw data to find volume (accounts for unordered)
        For i = 0 To UBound(UniqueTick)
            ' Define var to hold the volume total and set to zero to start
            Dim VolTotal As Double
            VolTotal = 0

            For j = 2 To RowCount
                If ws.Cells(j,1) = UniqueTick(i) Then
                    VolTotal = VolTotal + ws.Cells(j, 7).Value
                End If
            Next j

            ws.Cells(i + 2, 12).Value = VolTotal

        Next i

        ' Add functionality to your script to return the stock with the "Greatest % increase", "Greatest % decrease", and "Greatest total volume".

    Next

End Sub

