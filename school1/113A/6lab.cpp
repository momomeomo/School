

#include <iostream>
using namespace std;

int main()
{
    int spd;
    cout << "Enter tornado wind speed: ";
    cin >> spd;

    if (spd >= 261)
        cout << "category F5" << endl;
    else if (spd >= 207)
        cout << "category F4" << endl;
    else if (spd >= 158)
        cout << "category F3" << endl;
    else if (spd >= 113)
        cout << "category F2" << endl;
    else if (spd >= 73)
        cout << "category F1" << endl;
    else
        cout << "category F0" << endl;


    return 0;
}
