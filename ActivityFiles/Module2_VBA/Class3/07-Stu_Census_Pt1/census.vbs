' 1. Extract the number before the phrase "\_census_data" to figure out the year.
' 2. Add the year to the first column of each spreadsheet.
' 3. Split the "Place" column into "County" and "State".
' 4. Convert the household and per capita income columns to currency values for all cells.

Sub Census()

    ' Execute everything per worksheet    
    For w = 1 To ActiveWorkbook.Worksheets.count

        With ActiveWorkbook.Worksheets(w)

            ' Store number of rows
            Dim RowNum As Integer
            RowNum = .Cells(Rows.Count, 1).End(xlUp).Row

            ' Get the tab name and then split by _ to get the year
            Dim SheetName As String
            Dim SheetNameWords() As String
            Dim Year As Integer
            
            ' SheetName = ActiveSheet.Name
            SheetName = .Name
            SheetNameWords = Split(SheetName, "_")
            Year = SheetNameWords(0)

            ' Insert a Column at the beginning for Year and fill the year in
            .Range("A:A").EntireColumn.Insert
            .Range("A1").Value = "Year"
            
            ' Populate column A with Year
            For r = 2 to RowNum
                .Cells(r,1).Value = Year
            Next r

            ' Insert a column after Place named "State"
            .Range("C:C").EntireColumn.Insert
            .Range("C1").Value = "State"


            ' Split the Place value by " " to fill in State Values and autofit column width
            For i = 2 To 3221
                .Cells(i, 3).Value = Split(.Cells(i, 2).Value, ", ")(1)
            Next i
            .Columns("C:C").Columns.AutoFit

            ' Update the Place header to be "County"
            .Range("B1").Value = "County"
            
            ' Split the Place value by column to only keep the county and autofit column width
            For i = 2 To 3221
                .Cells(i, 2).Value = Split(.Cells(i, 2).Value, ", ")(0)
            Next i
            .Columns("B:B").Columns.AutoFit

            ' Convert the household and per capita income columns to currency values for all cells.
            .Range("F:F").NumberFormat = "$#,##0.00"
            .Range("F:F").Columns.AutoFit
            .Range("G:G").NumberFormat = "$#,##0.00"
           . Range("G:G").Columns.AutoFit
        
        End With

    Next w

End Sub