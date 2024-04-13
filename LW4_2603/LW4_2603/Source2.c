#include <math.h>

const unsigned int N = 180000001;

double Func(unsigned int a)
{
	double x = a / (N * 10.0);
	return (tan(x) + sin(x)) / exp(x);
}