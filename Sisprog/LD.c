#include <stdio.h>

/*
Print each byte in easy whay, if you want in binary 
just uncomment the printf otherwise it will be in hexadecimal
*/
void printB(unsigned char byte){
   // for(int i = 1<<7; i > 0; i = i/2){printf("%c", (i&byte)? '1':'0');}
    printf("%X", byte);
}


/*
Given an star addr and end addr and a memory, it will print
all the interval using the configurations of printB 
*/
void printM(unsigned char (*mem)[4096], int Saddr, int Eaddr){
    int addr = Saddr;
    printf("Endereço de memória : Dado \n");
    while (addr < Eaddr){    
        printf("%X: ", addr);
        for (int i = 0; i < 16 && addr <Eaddr; i++, addr++){
            printB((*mem)[addr]);
            printf(" ");
        }
        printf("\n");        
    }

}


/*
Read each caracter of a txt file and convert it to its
respactive numeric value in hexadecimal convetion.

It will read words that ends in space on end of line and
return the len of the word and it values in a pointer

*/
int motorLer (FILE* file, int (*word)[]){

    int read = fgetc(file);
    int i = 0;
    (*word)[0] = 0;
    while(read != 10 && read != 32){
        if (read == -1){
            return -1;
    
        //To creat the hex we need 2  ascii, so we increse the order of the first digit and than we insert the second
        }else if ((read >= 48 && read <= 57)){ // 0...9
            (*word)[0] = (*word)[0]*16 + (read - 0x30);
            i += 1;

        }else if ((read >= 65 && read <= 70)){ //A...F
            (*word)[0] = (*word)[0]*16 + (read - 0x37);
            i += 1;
        }else{
            printf("\n\nARQUIVO POSSUI CARACTER INVÁLIDO\n\n");
        }
        
        read = fgetc(file);
        (*word)[1] = read;
    }
    return i;
}

/*
Given a file it will call the reading motor do discover the words
and save the code in memory and mark the star and end addr

Please attetion to file formatting defined in P1 of PCS3612 2021

*/

int loader(unsigned char (*mem)[4096], int* Saddr, int* Eaddr,char filename[]){

    int i = 0, j = 0;
    int word[2];

    FILE* file = fopen(filename, "r");

    //We firs define the addr, if its not correct we return an error flag
    i = motorLer(file, &word);
    if(i == 3){
    if(word[1] == '\n'){
        *Saddr = word[0];
        *Eaddr = *Saddr;
    }else{
        return 1;
    }}else{
        return 1;
    }

    //We get a word and his len, than we write it in memory
    while (i != -1){
        i = motorLer(file, &word);
        j++;

        if (i == 2){
            (*mem)[*Eaddr] = word[0];
            *Eaddr += 1;
        }else if(i != -1 && i != 0){
            return 1;
        }
        if (word[1] == '\n'){
            j = 0;
        }if( j > 16){
            return 1;
        }

    }
    fclose(file);
    return 0;
}

/*
It will extract the code from memory that is alocate in a interval
[Saddr, Eaddr] and write a file in the formatting that is designed for the loader

Please attetion to file formatting in P1 of PCS3612 2021

*/

void dumper(int Saddr, int Eaddr, unsigned char (*mem)[4096], char filename[]){

    FILE* file = fopen(filename, "w");
    int read = Saddr;
    //Write the memory addr first, and the we start to read the data
    for(int i = 2; i >= 0; i--){
        int a = (read>>(4*i))<=9?((read>>(4*i)) + 0x30):((read>>(4*i)) + 0x37);
        fputc(a, file);
                
        read = read - ((read>>(4*i))<<(4*i));
    }

    fputc(10, file);

    int addr = Saddr, i = 0; 
    while(addr < Eaddr){
        read = (*mem)[addr];
        
        if (i < 15){
            //Hex to ASCII conversion in 2 steps, first the 4 most significant bits and then the 4 least
            for(int j = 1; j >= 0; j-- ){
                int a = (read>>(4*j))<=9?((read>>(4*j)) + 0x30):((read>>(4*j)) + 0x37);
                fputc(a, file);
                read = read - ((read>>(4*j))<<(4*j));
            }
            fputc(32, file);
            i++;
            addr++;
        }else{
            for(int j = 1; j >= 0; j-- ){
                int a = (read>>(4*j))<=9?((read>>(4*j)) + 0x30):((read>>(4*j)) + 0x37);
                fputc(a, file);
                read = read - ((read>>(4*j))<<(4*j));
            }
            i = 0;
            addr++;
            fputc(10, file);
        }
    }
    fputc(10, file);
    fclose(file);
    
}



int main() {

    unsigned char mem[4096];
    int Saddr;
    int Eaddr;
    char fileIn[50] = "prova.txt";
    char fileOut[50] = "saida.txt";
    printf("\n\nMEMORIA INICIAL\n\n");
    printM(&mem, 0x10, 0x38);

    int x = loader(&mem, &Saddr, &Eaddr, fileIn);
    if (x == 1) {
        printf("ERRO DE LEITURA\n\n");
        return 0;
    }

    printf("\n\nMEMORIA CARREGADA\n\n");
    printM(&mem, Saddr, Eaddr);


    dumper(Saddr, Eaddr, &mem, fileOut);

    for(int i = 0; i < sizeof mem; i++){
        mem[i] = 0;
    }
    printf("\n\nMEMORIA LIMPA\n\n");
    printM(&mem, Saddr, Eaddr);

    x = loader(&mem, &Saddr, &Eaddr, fileOut);
    if(x == 1){
        printf("ERRO DE ESCRITA\n\n");
        return 0;
    }
    printf("\n\nMEMORIA RECARREGADA DO ARQUIVO GERADO PELO DUMPER\n\n");
    printM(&mem, Saddr, Eaddr);

    return 0;
}



