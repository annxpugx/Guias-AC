/**
    Arquitetura de Computadores I - Guia_01.
    Nome: Anna Puga Campos Rodrigues; Matricula: 694370
*/
public class Conversao2a{
    public static void dec2bin(int d){
        int aux = 0;
        int aux2 = d;
        
        for(int i = 0; i <= 12; i++){
            aux += (d%10)*Math.pow(2,i); //calculo da soma das potencias
            d = d/10;                   //que formam o numero decimal
        }

        MyIO.println(aux2 + "[2] = " + aux + "[10]");
    
    }

    public static void main(String[] args){
        //leitura do arquivo com os 
        Arq.openRead("conversao2a.txt");
            while(Arq.hasNext()){
                int a = Arq.readInt();
                dec2bin(a);
            }
        Arq.close();

    }
}