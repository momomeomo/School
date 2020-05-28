
#include<string>
using std:: string;

#ifndef BANKACCOUNT
#define BANKACCOUNT

class BankAccount
{
private:
	string name;
	double balance;

public:
	BankAccount();
	BankAccount(string n, double b);
	double getBalance();
	bool deposit(double amt);
	bool withdraw(double amt);
	void showAccountInfo();
};

#endif