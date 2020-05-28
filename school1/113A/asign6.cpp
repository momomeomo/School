/*
#include <iostream>
using namespace std;

double MtoK(double m);
double KtoM(double k);
//char getMenuChoice();
char letter;

int main()
{
	do
	{
	cout << "A. Miles to Kilometers,  B. Kilometers to Miles,  Q. Quit" << endl;
	cin >> letter;


	switch (toupper(letter))
		{

	case 'A':
		cout << "Enter Miles: ";
		cin >> m;
		MtoK();
		break;
	case 'B':
		cout << "Enter Kilometers: ";
		cin >> k;
		KtoM();
		break;
		}
	}
	while (toupper(letter) != 'Q');

	return 0;
}

double MtoK(double m)
{
	return m * .6214;
}

double KtoM(double k)
{
	return k * 1.6093;
}

//char getMenuChoice()
//{
//	return;
//}
*/

#include <iostream>
using namespace std;

double MtoK(double m);
double KtoM(double k);
double k;
double m;
char getMenuChoice();
char letter;

int main()
{
	do
	{
		getMenuChoice();

		switch (toupper(letter))
		{

		case 'A':
			cout << "Enter Miles: " << endl;
			cin >> m;
			cout << MtoK(m) << endl;
			break;
		case 'B':
			cout << "Enter Kilometers: " << endl;
			cin >> k;
			cout << KtoM(k) << endl;
			break;
		}

	}
	while (toupper(letter) != 'Q');
	cout << "exiting" << endl;
	return 0;
}

double MtoK(double m)
{
	return m * 1.6093;
}

double KtoM(double k)
{
	return k * .6214;
}

char getMenuChoice()
{
	cout << "A. Miles to Kilometers,  B. Kilometers to Miles,  Q. Quit" << endl;
	cin >> letter;
	return letter;
}
