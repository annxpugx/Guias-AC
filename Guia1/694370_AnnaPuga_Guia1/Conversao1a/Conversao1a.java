public class Conversao1a{
    
    /**
    Arquitetura de Computadores I - Guia_01.
    Nome: Anna Puga Campos Rodrigues; Matricula: 694370
    */
    public static void dec2bin(int d){
        int aux = d;
        int[] b = new int[12];
        for(int i = 11; d > 0; d = d/2, i--){ //invertendo a posição do vetor que guarda os 
            b[i] = d % 2;                     //restos que formam o numero binario
        }
        //impressão do numero binario
        MyIO.print(aux + "[10] = "); 
        for(int i = 0; i < 12; i++){
            MyIO.print(b[i]);
        }
        MyIO.println("[2]");
    }

    public static void main(String[] args){
        //leitura do arquivo com os valores decimais
        Arq.openRead("conversao1a.txt");
            while(Arq.hasNext()){
                int a = Arq.readInt();
                dec2bin(a);
            }
        Arq.close();

    }
}