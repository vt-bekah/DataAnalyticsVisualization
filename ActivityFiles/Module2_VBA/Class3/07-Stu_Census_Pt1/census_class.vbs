Sub Census()

    ' Loop through all worksheets
    For Each ws in Worksheets

        ' determine how many rows and store it
        LastRow = ws.Cells(Rows.Count, 1).End(xlUp).Row

        ' declare and assign var to hold file name
        Dim WorksheetName As String
        WorksheetName = ws.Name

        ' pull year from ws name
        CensusYear = Split(WorksheetName, "_")

        ' insert year column and populate with year from worksheet name
        ws.Range("A1").EntireColumn.insert
        ws.Cells(1, 1).Value = "Year"
        ws.Range("A2:A" & LastRow) = CensusYear(0)

        ' insert state column and populate from split of place 
        ws.Range("C1").EntireColumn.insert
        ws.Cells(1, 3).Value = "State"
        For i = 2 to LastRow
            ws.Cells(i, 3).Value = Split(ws.Cells(i, 2).Value, ", ")(1)
        Next i

        ' update place column header and split for county only
        ws.Cells(1, 2).Value = "County"
        For i = 2 to LastRow
            ws.Cells(i, 2).Value = Split(ws.Cells(i, 2).Value, ", ")(0)
        Next i

        ' Convert the household and per capita income columns to currency values for all cells.
        ws.Range("F:G").Style = "Currency"
        
        'Autofit all columns touched
        ws.Range("A:G").Columns.AutoFit

    Next

End Sub
