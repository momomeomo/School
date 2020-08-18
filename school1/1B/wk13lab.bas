
Dim Item$(10)
Dim Price(10)

for x=1 to 10
    input "Enter Item: ";Item$(x)
    input "Enter Item Price: ";Price(x)
next x

print "--------- Receipt ----------- "

minPrice=Price(1)
minItem$=Item$(1)

for x=2 to 10
    if Price(x)<=minPrice then
        minPrice=Price(x)
        minItem$=Item$(x)
    end if
next x

print "Least Expensive Item: ";minItem$,,minPrice

end
