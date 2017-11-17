#include <iostream>
#include <string>
using namespace std;

string inverte(string word) {
    int tamanho = word.size();
    char aux;
    for (int i = 0; i < tamanho/2; i++) {
        int j = tamanho - (1+i);
        aux = word.at(i);
        word.at(i) = word.at(j);
        word.at(j) = aux;
    }
    return word;
}

int main() {
    string k;
    int n;
    cin >> k;
    cin >> n;
    string array[n];
    for (int i = 0; i < n; i++) {
        cin >> array[i];
    }

    for (int i = 0; i < n; i++) {
        if (array[i] == k) {
            cout << inverte(array[i]) << endl;
        }
        else {
            cout << array[i] << endl;
        }
    }
    return 0;
}
