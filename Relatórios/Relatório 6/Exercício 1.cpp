#include <iostream>
#include <string>
using namespace std;

class Banda 
{
public:
    // Atributos
    string nome;
    int integrantes;
    float potenciaSom;
    int energia;

    void duelar(Banda &rival) 
    {
        cout << nome << " esta duelando contra " << rival.nome << "!" << endl;

        rival.energia -= (int)potenciaSom;

        cout << nome << " realizou sua apresentacao!" << endl;
        cout << rival.nome << " perdeu energia." << endl;
    }

    void exibirStatus() 
    {
        cout << "Nome: " << nome << endl;
        cout << "Integrantes: " << integrantes << endl;
        cout << "Potencia do som: " << potenciaSom << endl;
        cout << "Energia: " << energia << endl;
        cout << "------------------------" << endl;
    }
};

int main() 
{

    Banda banda1;
    Banda banda2;

    banda1.nome = "One Direction";
    banda1.integrantes = 5;
    banda1.potenciaSom = 30.5;
    banda1.energia = 100;

    banda2.nome = "Imagine Dragons";
    banda2.integrantes = 4;
    banda2.potenciaSom = 25.0;
    banda2.energia = 100;

    cout << "STATUS INICIAL" << endl;
    banda1.exibirStatus();
    banda2.exibirStatus();

    banda1.duelar(banda2);

    cout << "\nSTATUS APOS O DUELO" << endl;
    banda1.exibirStatus();
    banda2.exibirStatus();

    return 0;
}
