
#include <iostream>
using namespace std;

void amp(int &v, double f);

int main()
{
    int x = 100;
    cout << "Before: " << x << endl;
    amp(x, .15);
    cout << "After: " << x << endl;

    return 0;
}

void amp(int &v, double f)
{
    v = v * f;
}