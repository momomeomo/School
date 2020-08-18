

#include <iomanip>
#include <iostream>

using namespace std;

int main()
{
    double Cel;
double Fah;
double Step;
double Min;
double Max;

cout << setprecision(2);

cout << "Enter Min Range Fahrenheit: ";
cin >> Min;

cout << "Enter Max Range Fahrenheit: ";
cin >> Max;

cout << "Enter Step: ";
cin >> Step;

for (Fah = Min; Fah <= Max; Fah += Step)
{
Cel = 5 * (Fah - 32) / 9;
cout << Cel << endl;
}

return 0;
}