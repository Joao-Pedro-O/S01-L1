#include <iostream>
using namespace std;

int main() {
    int matriz_solar[5][5];

    // Inicializando todas as células com 0 (inativas)
    for (int i = 0; i < 5; i++) {
        for (int j = 0; j < 5; j++) {
            matriz_solar[i][j] = 0;
        }
    }

    int opcao;

    while (true) {
        cout << "=== TELEMETRIA DO PAINEL SOLAR ===" << endl;
        cout << "1. Ativar Celula" << endl;
        cout << "2. Ver Mapa da Matriz" << endl;
        cout << "3. Sair" << endl;
        cout << "Escolha uma opcao: ";
        cin >> opcao;

        if (opcao == 1) {
            int f, c;
            cout << "Digite a fileira (0-4): ";
            cin >> f;
            cout << "Digite a coluna (0-4): ";
            cin >> c;

            if (matriz_solar[f][c] == 0) {
                matriz_solar[f][c] = 1;
                cout << "Sucesso: Celula solar ativada!" << endl;
            } else {
                cout << "Erro: Celula solar ja esta em operacao!" << endl;
            }
        }
        else if (opcao == 2)
