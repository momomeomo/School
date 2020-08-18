#include <iostream> 
#include <string> 
using namespace std;
struct Student { string name; int score; };
void addToList(Student arr[], Student addItem, int pos); 
void listStudents(Student arr[], int n);
int main() {
    Student studentList[50]; 
    Student s1; 
    int index = 0; 
    char choice; 
    do {
        cout << "Enter Name: "; 
        cin >> s1.name; cout << "Enter Score: "; 
        cin >> s1.score;
        addToList(studentList, s1, index++);
        cout << "Go Again? "; 
        cin >> choice;
    } while (choice == 'Y');
    listStudents(studentList, index); 
    return 0;
}
void addToList(Student arr[], Student addItem, int pos) 
{ arr[pos] = addItem; }
oid listStudents(Student arr[], int n) 
{ for (int x = 0; x < n; x++) cout << arr[x].name << "\t" << arr[x].score << endl; }