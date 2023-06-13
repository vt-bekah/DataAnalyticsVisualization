Sub SentenceBreaker()

    ' Retrieve the user sentence and store in variable
    Dim Sentence As String
    Sentence = Range("B1").Value
    MsgBox (Sentence)

    ' Retrieve the user word numbers and store in variables
    Dim Spot1 As Integer
    Dim Spot2 As Integer
    Dim Spot3 As Integer
    Spot1 = Range("A4").Value
    Spot2 = Range("A5").Value
    Spot3 = Range("A6").Value
    
    MsgBox (Spot1)
    MsgBox (Spot2)
    MsgBox (Spot3)

    ' Split the user's sentence into words
    Dim Words() As String
    Words = Split(Sentence, " ")


    ' Use the word numbers to retrieve the specific words in the sentence
    ' Remember to offset by the 0 index
    Range("B4").Value = Words(Spot1 - 1)
    Range("B5").Value = Words(Spot2 - 1)
    Range("B6").Value = Words(Spot3 - 1)

   
End Sub