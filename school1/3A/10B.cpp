
#include <iostream>
using namespace std;

int sum(int num1, int num2);
int sum(int num1, int num2, int num3);
int sum(int num1, int num2, int num3, int num4);

double sum(double num1, double num2);
double sum(double num1, double num2, double num3);
double sum(double num1, double num2, double num3, double num4);



int main()
{
    cout << "The Sum Is " << sum(9, 4, 6, 7) << endl;
    return 0;
}



int sum(int num1, int num2)
{
    return num1 + num2;
}

int sum(int num1, int num2, int num3)
{
    return num1 + num2 + num3;
}

int sum(int num1, int num2, int num3, int num4)
{
    return num1 + num2 + num3 + num4;
}



double sum(double num1, double num2)
{
    return num1 + num2;
}

double sum(double num1, double num2, double num3)
{
    return num1 + num2 + num3;
}

double sum(double num1, double num2, double num3, double num4)
{
    return num1 + num2 + num3 + num4;
}
