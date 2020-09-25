import java.util.*;

public class Ex3a {
    public static String dbin2base(int base, String x) {
        String[] separado = x.split(",", 2);
        int inteiro = Integer.parseInt(separado[0]);
        int decimal = Integer.parseInt(separado[1]);
        int somaInt = 0;
        int mult;
        double pot;
        double somaDec = 0;

        for(int i = 0; i < separado[0].length(); i++, inteiro /= 10){
            mult = inteiro % 10;
            pot = Math.pow(2, i);
            somaInt += (mult * pot);
        }


        for(int i = 0, j = separado[1].length(); i < separado[1].length(); i++, decimal /= 10, j--){
            mult = decimal % 10;
            pot = Math.pow(2, -1*j);
            somaDec += (mult * pot);
        }

        int[] decBase = new int[8];
        double aux;
        
        for(int i = 0; i < decBase.length; i++){
            aux = (somaDec * base);
            decBase[i] = (int) aux;
            somaDec = aux - (int)aux;
        }

        String resposta = "";
        int i;

        if (base == 16 && somaInt >= 10) { // caso seja maior de 10 imprime letra na base 16
            somaInt = 65 + somaInt - 10;      // posição na tabela ASCII
            char aux2 = (char) somaInt;
            resposta += aux2;
        } else
        resposta += somaInt; 
        
        resposta += ",";
        for(i = 0; i < decBase.length; i++){
            if (base == 16 && decBase[i] >= 10) { // caso seja maior de 10 imprime letra na base 16
                decBase[i] = 65 + decBase[i] - 10;      // posição na tabela ASCII
                char aux2 = (char) decBase[i];
                resposta += aux2;
            } else
            resposta += decBase[i]; 
        }

        return resposta;
    }

    public static void main(String[] args){
        String[] bin = {"11,111100","0,101001","0,101110","1,111010","1001,1011"};
        int[] base = {4,8,16,8,16};

        for(int i = 0; i < 5; i++){
            System.out.println(dbin2base(base[i], bin[i]));
        } 
    }
}