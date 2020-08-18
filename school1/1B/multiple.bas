
do
    input "Number of problems: ";numP
    c=0
    for x=1 to numP
        Num1=int(rnd(0)*12)+1
        Num2=int(rnd(0)*12)+1
        Ans=Num1*Num2
        do
            print Num1;"X";Num2
            input " = ";Guess
            c=c+1
        loop until Guess=Ans
        print "Correct!"
    next x
    Acc = (numP/c)*100
    print "Problems: ";numP;" Guesses: ";c;" Accuracy: ";using("###.##",Acc)
    input "Go again? Y/N: ";NN$
loop until NN$="N"
print "Thanks for playing"

end
