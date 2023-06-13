Sub ChessPieces():
    
    ' Clear previous values
    Range("A1:H8").ClearContents
    
    ' Inserting Data Via Cells
    Cells(7, 1).Value = "Pawn" 'Row then Column
    Cells(7, 2).Value = "Pawn"
    Cells(7, 3).Value = "Pawn"
    Cells(7, 4).Value = "Pawn"
    Cells(7, 5).Value = "Pawn"
    Cells(7, 6).Value = "Pawn"
    Cells(7, 7).Value = "Pawn"
    Cells(7, 8).Value = "Pawn"
    Cells(8, 1).Value = "Rook"
    Cells(8, 2).Value = "Knight"
    Cells(8, 3).Value = "Bishop"
    Cells(8, 4).Value = "Queen"
    Cells(8, 5).Value = "King"
    Cells(8, 8).Value = "Rook"
    Cells(8, 7).Value = "Knight"
    Cells(8, 6).Value = "Bishop"

    ' Inserting Data Via Ranges
    Range("A2:H2").Value = "Pawn"
    Range("A1, H1").Value = "Rook"
    Range("B1, G1").Value = "Knight"
    Range("C1, F1").Value = "Bishop"
    Range("D1").Value = "Queen"
    Range("E1").Value = "King"

End Sub
