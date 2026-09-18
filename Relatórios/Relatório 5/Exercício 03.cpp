#include <iostream>
#include <iomanip>
using namespace std;

int main() {
    float capacidadeMaxima;
    cout << "Informe a capacidade maxima de carga do drone (kg): ";
    cin >> capacidadeMaxima;

    float cargaAtual = 0.0;
    int opcao;

    do {
        cout << "=== SISTEMA DE CARGA DO DRONE ===" << endl;
        cout << "1. Verificar Carga" << endl;
        cout << "2. Carregar Pacote" << endl;
        cout << "3. Descarregar Pacote" << endl;
        cout << "4. Encerrar Operacao" << endl;
        cout << "Escolha uma opcao: ";
        cin >> opcao;

        if (opcao == 1) {
            float espacoDisponivel = capacidadeMaxima - cargaAtual;
            cout << fixed << setprecision(2);
            cout << "Carga Atual: " << cargaAtual << " kg / " << capacidadeMaxima << " kg" << endl;
            cout << "Espaco Disponivel: " << espacoDisponivel << " kg" << endl;
        }
        else if (opcao == 2) {
            float pesoPacote;
            cout << "Digite o peso do pacote a ser carregado (kg): ";
            cin >> pesoPacote;

            if (cargaAtual + pesoPacote > capacidadeMaxima) {
                cout << "Alerta: Peso maximo de decolagem excedido! Operacao cancelada." << endl;
            } else {
                cargaAtual = cargaAtual + pesoPacote;
                cout << "Pacote adicionado com sucesso!" << endl;
            }
        }
        else if (opcao == 3) {
            float pesoRemover;
            cout << "Digite o peso a ser removido (kg): ";
            cin >> pesoRemover;

            if (pesoRemover > cargaAtual) {
                cout << "Alerta: Nao e possivel remover mais peso do que o carregado." << endl;
            } else {
                cargaAtual = cargaAtual - pesoRemover;
                cout << "Pacote removido com sucesso!" << endl;
            }
        }
        else if (opcao == 4) {
            cout << "Encerrando sistema de telemetria..." << endl;
        }
        else {
            cout << "Opcao invalida. Tente novamente." << endl;
        }

    } while (opcao != 4);

    return 0;
}
