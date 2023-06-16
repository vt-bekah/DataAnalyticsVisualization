Sub CreditCharges()

    ' Declare array to hold unique CC Types and count to track placement
    Dim CCTypes() As String
    Dim count As Integer
    count = 0

    For i = 2 To Cells(Rows.Count, 1).End(xlUp).Row

        ' Declaring boolean to use for indicating  whether a type is in the array or not
        Dim known As Boolean
        known = False

        If i = 2 Then
            'populate the first type in the CCTypes array
            ReDim Preserve CCTypes(count)
            CCTypes(count) = Cells(i, 1).Value
            count = count + 1
        Else
            ' check to see if the cell value is in the array of CCTypes; if so set known to True
            For j = 0 To UBound(CCTypes)
                If Cells(i, 1).Value = CCTypes(j) Then
                    known = True
                End If
            Next j
            ' if false, add the new CC Type
            If known = False Then
                ReDim Preserve CCTypes(count)
                CCTypes(count) = Cells(i, 1).Value
                count = count + 1
            End If
        
        End If

    Next i
    
    ' populate the Credit Card column in the summary table with pop-up
    For k = 0 To UBound(CCTypes)
        Cells(k + 2, 7).Value = CCTypes(k)
        MsgBox ("Added " + CCTypes(k))
    Next k
    

    ' Add up the total value of credit card purchases for each brand,
    ' and put the information in the summary table.
    
    For i = 0 To UBound(CCTypes)
        
        ' define variable to hold total charged and set to 0 to start each time
        Dim Total As Long
        Total = 0
        
        For j = 2 To Cells(Rows.Count, 1).End(xlUp).Row
            If Cells(j, 1).Value = CCTypes(i) Then
                Total = Total + Cells(j, 3).Value
            End If
        Next j
        
        Cells(i + 2, 8).Value = Total
        
    Next i

    Range("H:H").NumberFormat = "$#,##0.00"
    Range("G:H").Columns.AutoFit

End Sub


'------scratch code to figuring out working with dynamic arrays--------

' Sub CreditCharges()

'     ' Declare array
'     Dim CCTypes() As String
    
'     ReDim Preserve CCTypes(0)
'     CCTypes(0) = "test0"
    
'     ReDim Preserve CCTypes(2)
'     CCTypes(1) = "test1"
'     CCTypes(2) = "test2"
'     ReDim Preserve CCTypes(3)
'     CCTypes(3) = "test3"

'     Range("J1").Value = CCTypes(0)
'     Range("J2").Value = CCTypes(1)
'     Range("J3").Value = CCTypes(2)
'     Range("J4").Value = CCTypes(3)

' End Sub


'------------------a direction erroring on UBound line-----------
' Sub CreditCharges()

'     ' Declare array
'     Dim CCTypes() As String
'     Dim count As Integer
'     count = 0

'     For i = 2 To 101

'         ' check to see if type is known and if not, add it to the array if not there
'         ' adapted from https://www.automateexcel.com/vba/find-value-in-array/

'         Dim subTypes As Variant
'         subTypes = Filter(CCTypes, Cells(i, 1).Value)
        
'         If UBound(subTypes) = -1 Then
'             ReDim Preserve CCTypes(count)
'             CCTypes(count) = Cells(i, 1).Value
'             count = count + 1
'         End If

'     Next i

'     For j = 0 To count - 1
'         Cells(j + 2, 7).Value = CCTypes(j)
'     Next j
    

' End Sub

