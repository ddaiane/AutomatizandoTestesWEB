package utils;

import java.util.Random;

public class GeraDadosAleatorios {

    public static String stringAleatoria(int tipo, int tamanho) { //metodo para gerar strings aleatorias para os campos. tipo 1 para letras, tipo 2 para numeros e tipo 3 para alfanumerica
        String stringAleatoria = "";
        switch (tipo) {
            case 0: stringAleatoria = stringLetras(tamanho);
                break;
            case 1: stringAleatoria = stringNumeros(tamanho);
                break;
            case 2: stringAleatoria = stringAlfanumerica(tamanho);
                break;
        }
        return stringAleatoria;
    }

    private static String stringLetras (int tamanho) { //gera string apenas de letras
        String letras;
        StringBuilder constroi;
        Random random = new Random();

        letras = "abcdefghijklmnopqrstuvwxyz";
        constroi = new StringBuilder(tamanho);

        for(int i = 0; i < tamanho; i++) {
            int posicaoAleatoria = random.nextInt(letras.length());

            constroi.append(letras
                    .charAt(posicaoAleatoria));
        }
        return constroi.toString();
    }

    private static String stringNumeros(int tamanho) { //gera string aleatoria apenas de numeros
        String digitos;
        StringBuilder constroi;
        Random random = new Random();

        digitos = "123456789";
        constroi = new StringBuilder(tamanho);

        for(int i = 0; i < tamanho; i++) {
            int posicaoAleatoria = random.nextInt(digitos.length());

            constroi.append(digitos
                    .charAt(posicaoAleatoria));
        }
        return constroi.toString();
    }

    private static String stringAlfanumerica(int tamanho) { //gera strings com letras e numeros misturados
        String caracteres;
        StringBuilder constroi;
        Random random = new Random();

        caracteres = "123456789" + "abcdefghijklmnopqrstuvwxyz";
        constroi = new StringBuilder(tamanho);

        for(int i = 0; i < tamanho; i++) {
            int posicaoAleatoria = random.nextInt(caracteres.length());
            constroi.append(caracteres
                    .charAt(posicaoAleatoria));
        }
        return constroi.toString();
    }

}
