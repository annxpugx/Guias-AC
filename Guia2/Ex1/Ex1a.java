public class Ex1a {
    public static double bin2double(String x) { 
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

        //System.out.println(somaDec);
        double B10 = somaInt + somaDec;
        return B10;

    }

    public static void main(final String[] args) {
        String[] bin = { "0,11011", "0,01110", "0,01001", "1,01011", "11,10010"};

        for (int i = 0; i < bin.length; i++) {
            System.out.println(bin[i] + "[2] = " + bin2double(bin[i]) + "[10]");
        }
    }
}