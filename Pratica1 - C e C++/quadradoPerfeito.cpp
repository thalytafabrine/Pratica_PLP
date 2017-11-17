#include <iostream>
#include <string>
using namespace std;

int somaLinha(string linha) {
    int tamanho = linha.size();
    int soma = 0;
    for (int i = 0; i < tamanho; i+=2) {
        soma += linha.at(i);
    }
    return soma;
}

int main() {
    int n;
    cin >> n;
    int matriz[n][n];
    string aux;

    for (int i = 0; i < n; i++) {
        cin >> aux;
        for (int j=0; j < aux.size(); j++) {
            matriz[i][j] = aux.at(j);
        }
    }
    return 0;
}
