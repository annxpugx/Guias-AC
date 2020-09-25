public class Ex2a {
    public static String double2bin(double x){
        int inteiro = (int) x;
        int[] intBin = new int[4];
        int[] decBin = new int[8];
        double decimal = x - inteiro;
        double aux;
        
        for(int i = intBin.length-1; inteiro > 0; inteiro = inteiro/2, i--){ //invertendo a posição do vetor que guarda os 
            intBin[i] = inteiro % 2;                                           //restos que formam o numero binario
        }

        for(int i = 0; i < decBin.length; i++){
            aux = (decimal * 2);
            decBin[i] = (int) aux;
            decimal = aux - (int)aux;
        }

        String resposta = "";
        int i;

        for(i = 0; i < intBin.length; i++){
            resposta += intBin[i];
        }
        resposta += ",";
        for(i = 0; i < decBin.length; i++){
            resposta += decBin[i];
        }

        return resposta;
    }

    public static void main(String[] args){
        double[] dec = {0.62500, 0.81250, 1.75000, 3.25000, 14.015625};
        
        for(int i = 0; i < dec.length; i++){
            System.out.println(dec[i] + "[10] = " + double2bin(dec[i]) + "[2]");
        }
    }
}