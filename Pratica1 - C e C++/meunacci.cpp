#include <iostream>
using namespace std;

long long int fib(long long int n) {
    long long int a = 0;
    long long int b = 1;
    long long int c = 0;
    long long int i = 2;

    if (n==0) {
        return 0;
    }

    while (i <= n) {
        c = a + b;
        a = b;
        b = c;
        i++;
    }

    return b;
}

long long int meunacci(long long int n) {
    int sum = 0;
    sum += fib(n)%10;
    sum += fib(n+1)%10;
    sum += fib(n+2)%10;
    return sum;
}

int main() {
    long long int n;
    cin >> n;
    long long int result;
    result = meunacci(n);
    cout << result << endl;
    return 0;
}


