
#include <iostream>
#include <array>
#include <string>

using namespace std;

void displayAll(int Price[], string Item[], int size);

int avgPrice(int Price[], int size);
int maxPrice(int Price[], int size);
int minPrice(int Price[], int size);

int findNameIndex(string Item[], string find, int size);

string Item[] = { "shoe","sock","pant","shirt","hat","glove","scarf","belt","jacket","boot" };
int Price[] = { 19,3,26,22,4,2,2,6,45,17 };

int indexPos;
int temp;
int temp2;
int temp3;

int main()
{
	displayAll(Price, Item, 10);
	avgPrice(Price, 10);
	cout << temp << endl;
	maxPrice(Price, 10);
	cout << temp2 << endl;
	minPrice(Price, 10);
	cout << temp3 << endl;
	findNameIndex(Item,"hat", 10);
	cout << "Sock index: " << indexPos << endl;
	return 0;
}

void displayAll(int arr[], string Item[], int size)
{
	for (int x = 0; x < size; x++)
		cout << Item[x] << " $" << arr[x] << endl;
}

int avgPrice(int arr[], int size)
{
	int total = 0;
	for (int x = 0; x < size; x++)
		total += arr[x];

	temp = total / 10;
	return temp;
}

int maxPrice(int arr[], int size)
{
	int max = arr[0];
	for (int x = 0; x < size; x++)
		if (arr[x] > max)
			max = arr[x];
	temp2 = max;
	return temp2;
}

int minPrice(int arr[], int size)
{
	int minn = arr[0];
	for (int x = 0; x < size; x++)
		if (arr[x] < minn)
			minn = arr[x];
	temp3 = minn;
	return temp3;
}

int findNameIndex(string arr[], string find, int size)
{
	for (int x = 0; x < size; x++) 
		if (arr[x] == find)
			indexPos = x;
	return indexPos;
}