
#include <string>
#include <iostream>
using namespace std;

struct stocks
{
	string tag;
	string name;
	int year;
	double gain;
	double yield;
};

void showall(stocks arr[], int size);

int main()
{
	stocks deal[5] = { {"HEXO","HEXO Corp.",2020,19,1.9},{"AMZN","Amazon",2020,0.8,0},{"MGM","MGM Resorts",2020,6.7,0.9},
					{"GDEN","Golden Entertainment",2020,5.0,0.2},{"TSLA","TESLA",2020,7,0}, };

	showall(deal, 5);
	return 0;
}

void showall(stocks arry[], int size) {
	for (int x = 0; x < size; x++)
		cout << arry[x].tag << "\t" << arry[x].name << "\t" << arry[x].year << "\t" << arry[x].gain <<  "\t" << arry[x].yield << endl;
}