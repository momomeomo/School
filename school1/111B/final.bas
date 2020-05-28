
Last=1
Dim Player$(50)
Dim Stars(50)
Dim Wins(50)
Dim Losses(50)

Do
    gosub [ShowMenu]

   Select Case Choice$
     Case "A"
        gosub [CA]

     Case "B"
        gosub [CB]

    case "C"
        gosub [CC]

   End Select
Loop Until Choice$="Q"
End

[ShowMenu]
   Print "A. Add Players"
   Print "B. List Players"
   Print "C. Search players"
   Print "Q. Quit"
   Input "Enter Choice: ";Choice$
return

[CA]
       Input "Enter player name: ";Player$(Last)
       Input "Stars collected: ";Stars(Last)
       Input "Matches won: ";Wins(Last)
       Input "Matches lost: ";Losses(Last)
       Last=Last+1
return

[CB]
     print "Player | Stars | Wins | Losses"
     print "_____________________"
       For x=1 to Last-1
         Print Player$(x),Stars(x),Wins(x),Losses(x)
       Next x
return

[CC]
        input "Player name: ";Pname$
        for x=1 to Last-1
            If Player$(x)=Pname$ Then
                print Player$(x),Stars(x),Wins(x),Losses(x)
            End if
        Next x
return
