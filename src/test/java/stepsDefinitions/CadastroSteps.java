package stepsDefinitions;
import static utils.Utils.*;
import static utils.GeraDadosAleatorios.*;

import io.cucumber.java.pt.*;
import org.openqa.selenium.By;
import pageObjects.CreateAccountPage;

import static org.junit.Assert.assertTrue;
import java.util.Random;
import java.util.concurrent.TimeUnit;

public class CadastroSteps {

    //numero random para gerar campos aleatorios e com quantidade de caracteres aleatorio
    Random random = new Random();

    //nome e sobrenome como atributos pra poder usar no assertEquals no final pra conferir se foi cadastrado/logado
    String nomeCadastro;
    String sobrenomeCadastro;


    //steps com dados random

    @Quando("informar nome aleatorio")
    public void informarNomeAleatorio() {
        int qtdCaracteres = random.nextInt(15) + 5; //nome aleatorio com pelo menos 5 caracteres
        String nome = stringAleatoria(0, qtdCaracteres); //tipo 0 = string aleatoria apenas de letras, tipo 1 apenas numeros, tipo 2 alfanumerica
        this.nomeCadastro = nome;
        driver.manage().timeouts().implicitlyWait(10, TimeUnit.SECONDS); //aguarda alguns segundos pra carregar a pagina pois site lento
        Na(CreateAccountPage.class).informaNome(nome);
    }

    @Quando("informar sobrenome aleatorio")
    public void informarSobrenomeAleatorio() {
        int qtdCaracteres = random.nextInt(15) + 5; //sobrenome aleatorio com pelo menos 5 caracteres
        String sobrenome = stringAleatoria(0, qtdCaracteres);
        this.sobrenomeCadastro = sobrenome;
        Na(CreateAccountPage.class).informaSobrenome(sobrenome);
    }

    @Quando("informar cidade aleatorio")
    public void informarCidadeAleatorio() {
        int qtdCaracteres = random.nextInt(15) + 5; //string aleatoria pra cidade com pelo menos 5 caracteres
        String cidade = stringAleatoria(0, qtdCaracteres);
        Na(CreateAccountPage.class).informaCidade(cidade);
    }

    @Quando("informar senha valida aleatoria")
    public void informarSenhaValidaAleatoria() { //senha aleatoria com quantidade de caracteres variavel mas sempre acima de 5
        int qtdCaracteres = random.nextInt(15) + 5; //string numerica aleatoria pra senha com pelo menos 5 caracteres
        String senha = stringAleatoria(2, qtdCaracteres);
        Na(CreateAccountPage.class).informaSenha(senha);
    }

    @E("informar senha aleatoria com {int} digitos")
    public void informarSenhaAleatoriaComDigitos(int qtdCaracteres) { //teste com quantidades exatas de digitos na senha para testar senhas fora padrao
        String senha = stringAleatoria(2, qtdCaracteres);
        Na(CreateAccountPage.class).informaSenha(senha);
    }

    @E("informar zipcode com {int} caracteres")
    public void informarZipcodeComCaracteres(int qtdCaracteres) {
        String zip = stringAleatoria(1, qtdCaracteres); //string numerica aleatoria de 5 caracteres para zipcode valido
        Na(CreateAccountPage.class).informaZipcode(zip);
    }

    @Quando("informar phone aleatorio")
    public void informarPhoneAleatorio() { //teste com os dois campos de telefone possiveis
        String phone = stringAleatoria(1, 9); //string numerica aleatoria de 9 caracteres para telefone
        Na(CreateAccountPage.class).informaTelefone1(phone);
    }

    @E("informar mobile-phone aleatorio")
    public void informarMobilePhoneAleatorio() { //teste com os dois campos de telefone possiveis
        String phone = stringAleatoria(1, 9); //string numerica aleatoria de 9 caracteres para telefone
        Na(CreateAccountPage.class).informaTelefone2(phone);
    }

    @Quando("selecionar um estado aleatorio")
    public void selecionarUmEstadoAleatorio() {
        int randomNumber = random.nextInt(51) + 1; //recebe um numero aleatorio entre 1 e 51 para variar o estado selecionado
        Na(CreateAccountPage.class).selecionaEstado(randomNumber);
    }

    @Quando("informar endereco aleatorio")
    public void informarEnderecoAleatorio() {
        String endereco = stringAleatoria(0, 8) + " street, " + stringAleatoria(1, 4); //gera um endere??o aleatorio no padrao "tal street, 5687"
        Na(CreateAccountPage.class).informaEndereco(endereco);
    }


    //steps com dados nao aleatorios para testes mais especificos
    @Quando("informar zipcode {string}") //para informar testes de valores especificos como valores com letras no meio
    public void informarZipcode(String zip) {
        Na(CreateAccountPage.class).informaZipcode(zip);
    }

    @Quando("informar mobile-phone {string}") //para informar testes de valores especificos como valores com letras no meio
    public void informarMobilePhone(String telefone) {
        Na(CreateAccountPage.class).informaTelefone1(telefone);
    }

    @Quando("selecionar pais {string}")
    public void selecionarPais(String pais) {
        Na(CreateAccountPage.class).selecionaPais(pais);
    }


    @Mas("nao informar campo {string}")
    public void naoInformarCampo(String campo) {
        System.out.println("Campo invalido no teste atual: " + campo);
    }

    @Quando("clicar register")
    public void clicarRegister() {
        Na(CreateAccountPage.class).acionaRegister();
    }




    @Entao("aparece logado o usuario")
    public void apareceLogadoOUsuario() {
        String nomeUsuario = nomeCadastro + " " + sobrenomeCadastro;
        driver.manage().timeouts().implicitlyWait(5, TimeUnit.SECONDS); //aguarda alguns segundos pois site lento
        assertTrue(driver.findElement(By.xpath("//div[@class='header_user_info']//span[text()='" + nomeUsuario + "']")).isDisplayed());
    }

    @Entao("sistema notifica falta dados")
    public void sistemaNotificaFaltaDados() {
        driver.manage().timeouts().implicitlyWait(5, TimeUnit.SECONDS); //aguarda alguns segundos pois site lento
        assertTrue(driver.findElement(By.xpath("//div[@class='alert alert-danger']//p[contains(text(), 'error')]")).isDisplayed());
    }

}
