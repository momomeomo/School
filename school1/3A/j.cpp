
#include <iostream>
using namespace std;

int main()
{

int score = 0;
char choice;

do
{
cout << "A. Plus Ten" << endl;
cout << "B. Minus Five" << endl;
cout << "Q. Quit" << endl;
cout << "Make Selection: " << endl;

cin >> choice;

switch (toupper(choice))
{
case 'A':
score += 10;
break;
case 'B':
score -= 5;
break;
}

cout << "Score: " << score << endl;

}
while (toupper(choice) != 'Q');
}

