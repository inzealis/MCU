#include <iostream>

const unsigned int N = 180000001;

extern "C" void Array(double* a);

int main()
{
	double* arr = new double[N];

	Array(arr);

	std::cout << "Result: ";

	for (char i = 0; i < 11; i++)
		std::cout << arr[i] << " ";

	std::cout << '\n';

	delete[] arr;
	return 0;
}