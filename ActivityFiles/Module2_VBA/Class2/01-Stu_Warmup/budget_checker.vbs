Sub CalcTotal():

    ' Define Price and Fee Info
    Dim Price As Double
    Dim Fees As Double
    Price = Cells(3, 6).Value
    Fees = Range("H3").Value

    ' Calculate Total and place in sheet
    Dim Total As Double
    Total = Round((Price + (Fees * Price)), 2)
    Range("L3").Value = Total

    ' Display Message Box indicating Total relation to budget
    ' Pull in Budget so easier to re-use later
    Dim Budget As Double
    Budget = Range("C3").Value

    If Total <= Budget Then
        MsgBox ("Total is within budget")
    
    Else
        MsgBox ("Total is over budget of $" + Str(Budget) + " with original price of $" + Str(Price))

        ' Determine what price would be within budget if fees stayed the same
        Dim NewPrice As Double
        NewPrice = Round((Budget / (1+Fees)),2)

        MsgBox("If the price is reduced to $" + Str(NewPrice) + ", you will stay in budget")
        Range("F3").Value = NewPrice
        Range("L3").Value = Round((NewPrice * (1+Fees)),2)

    End If

End Sub