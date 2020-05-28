#include <iostream>
using namespace std;

int main()
{

//c style
int score[] = {100,200,150};
char str[] = {'H','E'\0}; // hello world\0 = 12 array

char str1[] = {"Hello World"};
cout << sizeof(str1) << endl;

// string
string s2 = "hello world";
cout << s2 << endl;

// cout << "Enter Name: ";
// cin >> s2;
// cout << s2 << endl;
cout << s2.length() << endl; // methods

string name;
name = "0123456789"; // n+1
cout << name.substr(0,8);

string phrase = "The quick brown fox jumps over the lazy dog";
cout << phrase.length();
cout << phrase.substr(16,3);
cout << phrase.substr(phrase.length(-3,3)); // dog

}

// if else
int temp = 90;

if (temp >= 85)
    cout << "HOT" << endl;
else if (temp < 85 && temp >= 70)
    cout << "WARM" << endl;
else
    cout << "Cold" << endl;

if (temp >= 85)
    cout << "hot" << endl;
else 
    cout << "cold" << endl;

// conditional ?:
int temp = 50;
cout << (temp>=85) ? "HOT" : "COLD") << endl;

// switch
char choice;
cout << "A. English" << endl;
cout << "B. Spanish" << endl;
cout << "C. French" << endl;
cout << "Enter choice: ";
cin >> choice;

switch (choice)
{
    case 'A'
        cout << "Good Day" << endl;
        break;
    case 'B'
        cout << "Buenas Dias" << endl;
        break;
    case 'C'
        cout << "m'appele" << endl;
        break;
}