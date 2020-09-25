public class Conversao5a {
    /**
    Arquitetura de Computadores I - Guia_01.
    Nome: Anna Puga Campos Rodrigues; Matricula: 694370
    */
    public static void dec2base(int base, int d) {
        int aux = d;
        int j;
        if(base == 2)
            j = 8;
        else
            j = 2;
        int[] b = new int[j];

        for (int i = j-1; d > 0; d = d / base, i--) { // invertendo a posição do vetor que guarda os
            b[i] = d % base;                        // restos que formam o numero decimal
        }

        // impressao
        for (int i = 0; i < j; i++) {
            if (base == 16 && b[i] >= 10) { // caso seja maior de 10 imprime letra na base 16
                b[i] = 65 + b[i] - 10;      // posição na tabela ASCII
                char aux2 = (char) b[i];
                MyIO.print(aux2);
            } else
                MyIO.print(b[i]);
        }
    }

    public static int base2dec(int base, int d){
        int aux = 0;
        int aux2 = d;
        
        for(int i = 0; i <= 12; i++){
            aux += (d%10)*Math.pow(base,i); //calculo da soma das potencias
            d = d/10;                       //que formam o numero decimal
        }

        return aux;
    
    }

    public static void ASCII2hex(String x, int base){
        int[] vetor = new int[x.length()];
        MyIO.print(x + "[10] = ");
        for(int i = 0; i < x.length(); i++){
            vetor[i] = x.charAt(i);
        }
        for(int i = 0; i < x.length(); i++){
            dec2base(base, vetor[i]);
            System.out.print(" ");
        }
        MyIO.println("[" + base + "]");
        
    }
    public static void hex2ASCII(int[] x, int base){
        for(int i = 0; i < x.length; i++){
            MyIO.print(x[i] + " ");
        }
        MyIO.print("[" + base + "] = '");
        for(int i = 0; i < x.length; i++){
            int A = base2dec(base, x[i]);
            char B = (char) A;
            MyIO.print(B);
        }
        MyIO.print("'");
    }

    public static void main(String[] args){
        ASCII2hex("PUC-Minas", 16);
        ASCII2hex("2020-2", 16);
        ASCII2hex("Brasil", 2);
        int[] V =  {116, 157, 151, 164, 145};
        hex2ASCII(V, 8);
        System.out.println();  
    }
}