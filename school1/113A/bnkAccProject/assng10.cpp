
#include "BankAccount.h"
#include<iostream>
#include<string>
using namespace std;

char getMenuChoice();
char letter;
double amt1;

int main() 
{
	BankAccount x;
	do
	{
		getMenuChoice();

		switch (toupper(letter))
		{

		case 'A':
			cout << "Enter Amount:";
			cin >> amt1;
			if (x.deposit(amt1)) {
				cout << "Success" << endl;
				cout << "New Balance is " << x.getBalance() << endl;
			}
			else
				cout << "Invaild" << endl;
			break;
		case 'B':
			cout << "Enter Amount:";
			cin >> amt1;
			if (x.withdraw(amt1)) {
				cout << "Success" << endl;
				cout << "New Balance is " << x.getBalance() << endl;
			}
			else
				cout << "Invaild" << endl;
			break;
		case 'C':
			x.showAccountInfo();
			break;
		case 'Q':
			break;
		}

	} while (toupper(letter) != 'Q');
	cout << "exiting" << endl;
	return 0;
}

char getMenuChoice()
{
	cout << "A. Deposit" << endl;
	cout << "B. Withdrawal" << endl;
	cout << "C. Show Account Information" << endl;
	cout << "Q. Quit" << endl;
	cin >> letter;
	return letter;
}
