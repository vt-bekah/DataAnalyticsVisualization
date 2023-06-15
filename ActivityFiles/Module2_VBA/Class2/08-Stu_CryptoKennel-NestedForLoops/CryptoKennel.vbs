
Sub CryptoKennel():

    ' **Part 1:** Count the number of times `Cat Token` appears and display the number to your user in the form of a message box.
    Dim Trigger As String
    Trigger = "Cat Token"
    ' **Part 2:** Modify the script such that it changes the word `Cat Token` to `Dogecoin`.
    ' Trigger = "Dogecoin"
    Dim Count As Integer
    Count = 0

    ' For i = 1 to 6
    '     For j = 1 to 7
    '         If Cells(i, j) = Trigger Then
    '             Count = Count + 1
    '         End If
    '     Next j
    ' Next i
    '
    ' MsgBox (Trigger + " happens " + Str(Count) + " times")
    
    ' **Part 3:** Modify the script a third time, this time keeping in mind that you have a limited number of `Shiba Inu` 
    ' and `Dogecoin`. Use the full set of `Shiba Inu` and `Dogecoin` you have available to replace all instances of `Cat Token`. 
    ' If you run out of `Shiba Inu` or `Dogecoin` provide the user with the message: "Oh no! We still have some Cat Token..."

    Dim Shiba As Integer
    Shiba = Range("I2").Value
    Dim Doge As Integer
    Doge = Range("I5").Value


    For i = 1 to 6
        For j = 1 to 7
            If Cells(i, j) = Trigger Then
                If Shiba > 0 Then
                    Cells(i, j).Value = "Shiba Inu"
                    Shiba = Shiba - 1
                    If Shiba = 0 Then
                        MsgBox("Oh no! All Shibu Inu has been used (but you still have Dogecoin)")
                    End If
                ElseIf Doge > 0 Then
                    Cells(i, j).Value = "Dogecoin"
                    Doge = Doge - 1
                    If Doge = 0 Then
                        MsgBox("Oh no! All Dogecoin has been used")
                    End If
                Else
                    Count = Count + 1
                End If
            End IF
        Next j
    Next i

    Range("I2").Value = Shiba
    Range("I5").Value = Doge

    If Count > 0 Then
        MsgBox("Oh no! We still have some Cat Token... " + Str(Count))
    Else
        MsgBox("There are no Cat Tokens. You have " + Str(Shiba) + " Shiba Inu available and " + Str(Doge) + " Dogecoin available.")
    End If     

End Sub
