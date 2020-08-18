

#include <iostream>

using namespace std;

int main()
{
double Hrs;
double Rate;
double Gross;
double Taxed;
double Net;


cout << "Enter hours worked: " << endl;
cin >> Hrs;

cout << "Enter rate of pay: " << endl;
cin >> Rate;

Gross = Hrs * Rate;
cout << "Gross pay is: " << Gross << endl;

Taxed = Gross * .28;
cout << "taxes withheld: " << Taxed << endl;

Net = Gross - Taxed;
cout << "Total Net pay: " << Net << endl;
}