Sub CellsAndRanges():
    ' Inserting Data Via Cells
    Cells(2,1).value = "cat"
    Cells(2,2).value = "in"

    ' Inserting Data Via Ranges
    Range("F1").Value = "I"
    Range("F2").Value = "am"

    'Inserting Data Across Ranges
    Range("F5:F7").Value = 5

End Sub