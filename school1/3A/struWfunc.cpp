
#include <string>
#include <iostream>
using namespace std;

struct vehi
{
	string make;
	string model;  
	int year;
};

void showall(vehi arr[], int size);

int main()
{
	vehi deal[3] = { {"honda","accord",2016,},{"ford","focus",2014 }, {"chevy","focus",2012} };

	showall(deal, 3);
	return 0;
}

void showall(vehi arry[], int size) {
	for (int x = 0; x < size; x++)
		cout << arry[x].make << "\t" << arry[x].model << endl;
}