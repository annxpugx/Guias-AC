public class Conversao3a {
    /**
     * Arquitetura de Computadores I - Guia_01. Nome: Anna Puga Campos Rodrigues;
     * Matricula: 694370
     */
    public static void dec2bin(int base, int d) {
        int aux = d;
        int[] b = new int[12];
        int j = 0;

        for (int i = 11; d > 0; d = d / base, i--) { // invertendo a posição do vetor que guarda os
            b[i] = d % base;
            j++;                        // restos que formam o numero decimal
        }

        // impressao
        MyIO.print(aux + "[10] = ");
        for (int i = 12-j; i < 12; i++) {
            if (base == 16 && b[i] >= 10) { // caso seja maior de 10 imprime letra na base 16
                b[i] = 65 + b[i] - 10;      // posição na tabela ASCII
                char aux2 = (char) b[i];
                MyIO.print(aux2);
            } else
                MyIO.print(b[i]);
        }
        MyIO.println("[" + base + "]");
    }

    public static void main(String[] args) {
        // lendo o arquivo que contém os valores e suas bases correspondentes
        Arq.openRead("conversao3a.txt");
        while (Arq.hasNext()){
            int a = Arq.readInt();
            int b = Arq.readInt();
            dec2bin(b, a);
        }
        Arq.close();

    }
}