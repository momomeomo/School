
Balance=0

Print "Banking Menu"
Do
  Print "A. Deposit"
  Print "B. Withdrawal"
  Print "C. Show Balance"
  Print "Q. Quit"
  Input "Make Selection: ";Choice$
  Select Case Upper$(Choice$)
    Case "A"
        gosub [Depo]
    Case "B"
        gosub [With]
    Case "C"
        gosub [Show]
  End Select
  Print
  Print "----------------------------"
Loop Until Choice$="Q"
Print "Thanks for using the Banking Application"
End

[Depo]
    Input "Enter Amount to Deposit: ";Dep
     If Dep > 0 Then
        Balance=Balance+Dep
     Else
        Print "Invalid Amount"
     End If
return

[With]
    input "Enter Amount to Withdraw: ";Wit
    if Wit > 0 then
        Balance=Balance-Wit
    else
        print "Invalid Amount"
    end if
return

[Show]
      Print
      Print "*********************************"
      Print "*** Account Balance: $";using("####.##",Balance);" ***"
      Print "*********************************"
return
