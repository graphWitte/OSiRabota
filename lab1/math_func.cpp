#include "math_func.h"

unsigned long long calculate_factorial(int n) {
    unsigned long long fact = 1;
    for(int i = 1; i <= n; i++) {
        fact *= i;
    }
    return fact;
}