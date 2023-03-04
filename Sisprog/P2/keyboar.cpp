#include <iostream>
#include <stdio.h>
#include <string.h>

#include <iostream>
#include <fstream>
#include <algorithm>    // std::remove_if
#include <list>
using namespace std;

#define MEM 3
#define PRO "programa.txt"


int M[MEM];
int Acumulador = 0;



void printAcumulador(){
	printf("Acumulador: %d\n", Acumulador);
}

bool readProg(int level, ifstream& file);

int readNum(int*x){
	int read = 0;
	while (*x == '1' || *x == '2' || *x == '3' || *x == '4' || *x == '5' || *x == '6' || *x == '7' || *x == '8' || *x == '9' || *x == '0'){
		read = read*10 + (*x-48);
		*x = getchar();
	}
	return read;
}

int readNumF(int*x, ifstream& file){
	int read = 0;
	while (*x == '1' || *x == '2' || *x == '3' || *x == '4' || *x == '5' || *x == '6' || *x == '7' || *x == '8' || *x == '9' || *x == '0'){
		read = read*10 + (*x-48);
		*x = file.get();
	}
	return read;
}

void exect(){	

	int x;
	ifstream file;
	string line;
	printAcumulador();
	while(x != 'q'){
			x = getchar();

			if (x == '1' || x == '2' || x == '3' || x == '4' || x == '5' || x == '6' || x == '7' || x == '8' || x == '9' || x == '0'){
				Acumulador = readNum(&x);
				printAcumulador();
			}
			if (x == '+'){
				x = getchar();
				if (x == 'm'){
					x = getchar();
					Acumulador += M[x-48];
				}else{
					Acumulador += readNum(&x);
				}
				printAcumulador();
			}
			if (x == '-'){
				x = getchar();
				if (x == 'm'){
					x = getchar();
					Acumulador -= M[x-48];
				}else{
					Acumulador -= readNum(&x);
				}
				printAcumulador();	
			}
			if (x == '*'){
				x = getchar();
				if (x == 'm'){
					x = getchar();
					Acumulador *= M[x-48];
				}else{
					Acumulador *= readNum(&x);
				}
				printAcumulador();
			}
			if (x == '/'){
				x = getchar();
				if (x == 'm'){
					x = getchar();
					Acumulador /= M[x-48];
				}else{
					Acumulador /= readNum(&x);
				}
				printAcumulador();
			}
			
			
			if (x == 's'){
				x = getchar();
				M[x-48] = Acumulador;
				printf("Acumulador => Memória%d = %d\n", x-48, M[x-48]);
			}
			if (x == 'l'){
				x = getchar();
				Acumulador = M[x-48];
				printf("Memória%d => Acumulador = %d\n", x-48, Acumulador);
			}
			
			if(x == 'g'){
				if(!readProg(0, file)){
					printf("ERRO NA LEITURA");
				}
			}

			if(x == '>'){
				if(Acumulador > 0){
					if(!readProg(0, file)){
						printf("ERRO NA LEITURA");
					}
				}else{
					getline(cin, line);

				}
			}

			if(x == '<'){
				if(Acumulador < 0){
					if(!readProg(0, file)){
						printf("ERRO NA LEITURA");
					}
				}else{
					getline(cin, line);
				}
			}
			if(x == '='){
				if(Acumulador == 0){
					if(!readProg(0, file)){
						printf("ERRO NA LEITURA");
					}
				}else{
					getline(cin, line);
				}
			}

		}
	


}

void func(ifstream& file){

	int x;
	string line;
	while(x != 'q'){
			x = file.get();

			if (x == '1' || x == '2' || x == '3' || x == '4' || x == '5' || x == '6' || x == '7' || x == '8' || x == '9' || x == '0'){
				Acumulador = readNumF(&x,file);
				printAcumulador();
			}
			if (x == '+'){
				x = file.get();
				if (x == 'm'){
					x = file.get();
					Acumulador += M[x-48];
				}else{
					Acumulador += readNumF(&x, file);
				}
				printAcumulador();				
			}
			if (x == '-'){
				x = file.get();
				if (x == 'm'){
					x = file.get();
					Acumulador -= M[x-48];
				}else{
					Acumulador -= readNumF(&x, file);
				}
				printAcumulador();	
			}
			if (x == '*'){
				x = file.get();
				if (x == 'm'){
					x = file.get();
					Acumulador *= M[x-48];
				}else{
					Acumulador *= readNumF(&x, file);
				}
				printAcumulador();	
			}
			if (x == '/'){
				x = file.get();
				if (x == 'm'){
					x = file.get();
					Acumulador /= M[x-48];
				}else{
					Acumulador /= readNumF(&x, file);
				}
				printAcumulador();	
			}
			
			
			if (x == 's'){
				x = file.get();
				M[x-48] = Acumulador;
				printf("Acumulador => Memória%d = %d\n", x-48, M[x-48]);
			}
			if (x == 'l'){
				x = file.get();
				Acumulador = M[x-48];
				printf("Memória%d => Acumulador = %d\n", x-48, Acumulador);
			}
			
			if(x == 'g'){
				if(!readProg(1, file)){
					printf("ERRO NA LEITURA");
				}			}

			if(x == '>'){
				if(Acumulador > 0){
					if(!readProg(1, file)){
						printf("ERRO NA LEITURA");
					}
				}else{
					getline(file, line);
				}
			}

			if(x == '<'){
				if(Acumulador < 0){
					if(!readProg(1, file)){
						printf("ERRO NA LEITURA");
					}
				}else{
					getline(file, line);
				}
			}
			if(x == '='){
				if(Acumulador == 0){
					if(!readProg(1, file)){
						printf("ERRO NA LEITURA");
					}
				}else{
					getline(file, line);
				}
			}




		}
	


}

bool readProg(int level, ifstream& file){
	ifstream f;
	f.open(PRO);
	string call, function;
	int x;
		if (level == 0){
			getline(cin, call);
		}else{
			getline(file, call);
		}
		cout << "call" << call << endl;
		remove(call.begin(), call.end(), ' ');
		call.pop_back();
			while (getline(f, function)){		
				if(function[0] != '%'){
					if (function[function.size()-1] == ':'){

						if(function.substr(0, function.size()-1) == call){
							func(f);
							f.close();
							return true;
						}

					}
				}

			}
	
	
	return false;
}


void program(){
	string line;	
	cin.ignore(1);		// Para retirar \n da chamada
	ifstream file;
	int x, tam = 0;
	file.open(PRO);
	cout << "Programas ja escritos:" << endl;
	while(getline(file, line)){
		cout << line << endl;
		tam += 1;
	}
	cout << endl << "1 - Editar memória ja existente" << endl << "2 - Criar nova funcao"<< endl;
	getline(cin,line);
	file.clear();
	file.seekg(0);
	if(line == "1"){
		printf("Digite ; para nao alterar a linha ou digite a nova linha\n");
		string* edit = new string[tam];
		for(int i = 0; i < tam && getline(file, edit[i]); i++){
			cout << edit[i]<< endl;
			getline(cin, line);
			if(line != ";"){
				edit[i] = line;
			}

		}
		ofstream nfile;
		nfile.open(PRO);
		for(int i = 0; i < tam; i++){
			nfile << edit[i] << endl;
		}
		nfile.close();

	}else{
		if(line == "2"){
			printf("Digite o nome da nova função: \n");
			getline(cin, line);

			ofstream nfile(PRO, ios::app);	// Abre no modo append
			nfile << line << endl;

			while(line != "q"){
				getline(cin, line);
				nfile << line << endl;
			} 
			nfile.close();
		}
	}file.close();
	
}

int main(){

	int x;


	for(int i = 0; i < MEM; i++){
		M[i] = 0;
	}

	do{
		// Um loop de 100 ciclos apenas para exibir a janela
		if(x == '0'){
			exect();
			cin.ignore(1);
		}
		if(x == '1'){
			program();
		}
		printf("Calculadora programável, utilize as teclas \n 0- excutar \n 1- programar \nPara voltar para esta tela pressione q\n");
		x = getchar();

	}while(x != 'q');
	// Ocorreu tudo bem
	return 0;
}