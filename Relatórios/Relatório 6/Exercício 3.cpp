#include <iostream>
#include <string>
using namespace std;

class MembroInatel 
{
public:
    string nome;

    void seApresentar() 
    {
        cout << "Sou um membro da comunidade Inatel: " << nome << "." << endl;
    }
};

class Aluno : public MembroInatel 
{
public:
    string curso;

    void seApresentar() 
    {
        cout << "Meu nome e " << nome << " e estudo no curso de " << curso << "." << endl;
    }
};

class Professor : public MembroInatel 
{
public:
    string disciplina;

    void seApresentar() 
    {
        cout << "Meu nome e " << nome << " e leciono a disciplina de " << disciplina << "." << endl;
    }
};

int main() 
{
    Aluno aluno1;
    aluno1.nome = "João";
    aluno1.curso = "Engenharia de Software";

    Professor professor1;
    professor1.nome = "Ruan";
    professor1.disciplina = "Paradigmas da Programação";

    aluno1.seApresentar();
    professor1.seApresentar();

    return 0;
}
