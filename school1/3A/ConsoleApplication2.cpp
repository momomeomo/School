
#include <iomanip>
#include <ctime>
#include <iostream>

using namespace std;

int main()
{
    cout << setprecision(2) << fixed;
    char Qst;
    do {
        srand(time(0));
        int num1, num2, ans, guess;
        double Pcent = 0;
        double numGus = 0;
        double Amt;

        cout << "How many problems would you like to do: ";
        cin >> Amt;

        for (int x = 0; x != Amt; x++)
        {
            num1 = rand() % 12 + 1;
            num2 = rand() % 12 + 1;
            ans = num1 * num2;

            do
            {
                cout << num1 << " X " << num2 << " = ";
                cin >> guess;
                numGus++;
            } while (guess != ans);
            {
                cout << "Correct!" << endl << endl;
            }
        }

        Pcent = (Amt / numGus) * 100;
        cout << endl << "Questions: " << Amt << " Attempts: " << numGus << " Accuracy: " << Pcent << "%" << endl;
        cout << "go again? Y/N" << endl;
        cin >> Qst;

    } while (toupper(Qst) == 'Y');
    {
        cout << endl << "Thanks for playing" << endl;
    }

    return 0;
}
