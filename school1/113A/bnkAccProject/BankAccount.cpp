
#include <iostream>
#include "BankAccount.h"
using namespace std;

BankAccount::BankAccount()
	: name("John Doe"), balance(100)
{
}

BankAccount::BankAccount(string n, double b)
	: name(n), balance(b)
{
}

double BankAccount::getBalance()
{
	return balance;
}

bool BankAccount::withdraw(double amt)
{
	if (amt > 0 && balance > 0)
	{
		balance = balance - amt;
		return true;
	}
	else
	{
		return false;
	}
}

bool BankAccount::deposit(double amt)
{
	if (amt > 0)
	{
		balance = balance + amt;
		return true;
	}
	else
	{
		return false;
	}
}

void BankAccount::showAccountInfo()
{
	cout << "Account Information" << endl;
	cout << name << endl;
	cout << "$" << balance << endl;
}