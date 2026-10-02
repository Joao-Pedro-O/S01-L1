#include <iostream>
#include <string>
#include <vector>
using namespace std;

class Hobbit 
{
public:
    string nome;

    virtual void fazerAtividade() 
    {
        cout << "O hobbit " << nome << " esta aproveitando um dia tranquilo na Comarca." << endl;
    }
};

class Jardineiro : public Hobbit 
{
public:
    void fazerAtividade() override 
    {
        cout << "O jardineiro " << nome << " esta cuidando das flores e plantas ao redor das tocas!" << endl;
    }
};

class Cozinheiro : public Hobbit 
{
public:
    void fazerAtividade() override 
    {
        cout << "O cozinheiro " << nome << " esta preparando o segundo cafe da manha para os convidados!" << endl;
    }
};

class Fazendeiro : public Hobbit 
{
public:
    void fazerAtividade() override 
    {
        cout << "O fazendeiro " << nome << " esta colhendo vegetais e hortalicas em suas terras!" << endl;
    }
};

int main() 
{
    vector<Hobbit*> hobbits;

    Jardineiro* jardineiro1 = new Jardineiro();
    jardineiro1->nome = "Ruan";

    Cozinheiro* cozinheiro1 = new Cozinheiro();
    cozinheiro1->nome = "Pedro";

    Fazendeiro* fazendeiro1 = new Fazendeiro();
    fazendeiro1->nome = "Felipe";

    hobbits.push_back(jardineiro1);
    hobbits.push_back(cozinheiro1);
    hobbits.push_back(fazendeiro1);

    for (int i = 0; i < hobbits.size(); i++) 
    {
        hobbits[i]->fazerAtividade();
    }

    for (int i = 0; i < hobbits.size(); i++) 
    {
        delete hobbits[i];
    }

    return 0;
}
