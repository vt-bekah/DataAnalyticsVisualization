' You should use a with statement to qualify both your Rows and Columns counts. This will prevent any errors while working with older pre 2007 and newer 2007 Excel Workbooks.

' Last Column

' With Sheets("Sheet2")
'     .Cells(1, .Columns.Count).End(xlToLeft).Column
' End With 
' Last Row

' With Sheets("Sheet2")
'     .Range("A" & .Rows.Count).End(xlUp).Row
' End With 
' Or

' With Sheets("Sheet2")
'     .Cells(.Rows.Count, 1).End(xlUp).Row
' End With 

Sub WorksheetLoop()

    For j = 1 To ActiveWorkbook.Worksheets.Count
        ' put the sheet number into O2 of the relevant sheet
        ActiveWorkbook.Worksheets(j).Range("O2").Value = j
        
        With ActiveWorkbook.Worksheets(j)
            ' put the row count into P2 of the relevant sheet
            ActiveWorkbook.Worksheets(j).Range("P2").Value = .Cells(.Rows.Count, 1).End(xlUp).Row
            ' put the column count into Q2 of the relevant sheet
            ActiveWorkbook.Worksheets(j).Range("Q2").Value = .Cells(1, .Columns.Count).End(xlToLeft).Column
        End With
        ActiveWorkbook.Worksheets(j).Cells(1, 9).Value = "Ticker"
        ActiveWorkbook.Worksheets(j).Cells(1, 10).Value = "Yearly Change"
        ActiveWorkbook.Worksheets(j).Cells(1, 11).Value = "Percent Change"
        ActiveWorkbook.Worksheets(j).Cells(1, 12).Value = "Total Stock Volume"
        
    Next j

End Sub

Sub WorksheetNameLoop()

    Dim SheetNames() As String

    ' iterate through each sheet
    For j = 1 To ActiveWorkbook.Worksheets.Count
        ReDim Preserve SheetNames(j - 1)
        SheetNames(j - 1) = ActiveWorkbook.Worksheets(j).Name
    Next j

    For i = 0 To 5
        Range("P" & i + 1).Value = SheetNames(i)
    Next i

End Sub


' ------------ the below does NOT work to shorten names -------------------
' Sub WorksheetLoop()

'     Dim SheetNames() As String

'     ' iterate through each sheet
'     For j = 1 To ActiveWorkbook.Worksheets.Count
'         ReDim Preserve SheetNames(j - 1)
'         SheetNames(j - 1) = ActiveWorkbook.Worksheets(j).Name
'     Next j

'     For i = 0 To UBound(SheetNames)
'         SheetNames(i).Cells(1, 9).Value = "Ticker"
'         SheetNames(i).Cells(1, 10).Value = "Yearly Change"
'         SheetNames(i).Cells(1, 11).Value = "Percent Change"
'         SheetNames(i).Cells(1, 12).Value = "Total Stock Volume"
'         SheetNames(i).Columns("I:M").Columns.AutoFit
'     Next i

' End Sub


'--------also not work for shortening despite hints at https://stackoverflow.com/questions/41477794/refer-to-sheet-using-codename
'---- it didn't work bc I needed a period at the start of Cells.... https://learn.microsoft.com/en-us/office/vba/language/reference/user-interface-help/with-statement
' Sub WorksheetLoop()

'     For j = 1 To ActiveWorkbook.Worksheets.Count

'         Dim SheetName As String
'         SheetName = ActiveWorkbook.Worksheets(j).Name
'         ActiveWorkbook.Worksheets(j).Cells(1, 14).Value = SheetName
               
'         With ActiveWorkbook.Worksheets(j)
'             ' put the row count into P2 of the relevant sheet
'             ActiveWorkbook.Worksheets(j).Range("P2").Value = .Cells(.Rows.Count, 1).End(xlUp).Row
'             ' put the column count into Q2 of the relevant sheet
'             ActiveWorkbook.Worksheets(j).Range("Q2").Value = .Cells(1, .Columns.Count).End(xlToLeft).Column
'         End With
        
'         With Worksheets(SheetName)
'             Cells(1, 9).Value = "Ticker"
'             Cells(1, 10).Value = "Yearly Change"
'             Cells(1, 11).Value = "Percent Change"
'             Cells(1, 12).Value = "Total Stock Volume"
'         End With
        
'     Next j

' End Sub