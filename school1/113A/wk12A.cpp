
#include <string>
#include <iostream>
using namespace std;

int main()
{
    string Car[5];
    int MPG[5];

    for (int x = 0; x < 5; x++) // input
    {
        cout << "Enter car model: ";
        getline(cin, Car[x]);
    }
    
    for (int x = 0; x < 5; x++) // output
    {
        cout << Car[x] << endl;
    }

    for (int x = 0; x < 5; x++) // input
    {
        cout << "Enter car MPG: ";
        cin >> MPG[x];
    }

    for (int x = 0; x < 5; x++) // output
    {
        cout << MPG[x] << endl;
    }
}

