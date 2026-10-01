#include <iostream>
#include <string>
using namespace std;

class LinkSocial 
{
private:
    string nome;
    string arcana;
    int rank;

public:
    string getNome() 
    {
        return nome;
    }

    string getArcana() 
    {
        return arcana;
    }

    int getRank() 
    {
        return rank;
    }

    void setNome(string novoNome) 
    {
        nome = novoNome;
    }

    void setArcana(string novaArcana) 
    {
        arcana = novaArcana;
    }

    void setRank(int novoRank) 
    {
        rank = novoRank;
    }

    void subirRank() 
    {
        rank++;
    }
};

int main() 
{
    LinkSocial link;

    link.setNome("Aigis");
    link.setArcana("Aeon");
    link.setRank(1);

    link.subirRank();

    cout << "Nome: " << link.getNome() << endl;
    cout << "Arcana: " << link.getArcana() << endl;
    cout << "Rank: " << link.getRank() << endl;

    return 0;
}
