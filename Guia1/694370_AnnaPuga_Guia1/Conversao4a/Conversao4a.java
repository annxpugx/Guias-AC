public class Conversao4a {
    /**
     * Arquitetura de Computadores I - Guia_01. Nome: Anna Puga Campos Rodrigues;
     * Matricula: 694370
     */
    public static void bin2base(int base, String a) {
        
        System.out.println(a);
        int ibin = Integer.parseInt(a, 2);
        System.out.println("Decimal: " + ibin);
        String hex = Integer.toHexString(ibin);
        System.out.println("Hexa decimal: " + hex);
        String oct = Integer.toOctalString(ibin);
        System.out.println("Octal: " + oct);
        System.out.println(" ");
        
    }

    public static void main(String[] args) {
        // lendo o arquivo que contém os valores e suas bases correspondentes
        Arq.openRead("conversao4a.txt");
        while(Arq.hasNext()) {
            String a = Arq.readString();
            int b = Arq.readInt();
            bin2base(b, a);
        }
        Arq.close();

    }
}