package stepsDefinitions;
import static utils.Utils.*;

import org.openqa.selenium.By;
import pageObjects.CreateAccountPage;

import io.cucumber.java.pt.Entao;
import io.cucumber.java.pt.Quando;
import static org.junit.Assert.assertTrue;
import java.util.Random;
import java.util.concurrent.TimeUnit;

public class CadastroSteps {

    //numero random para o estado selecionar um diferente a cada vez
    Random random = new Random();

    //nome e sobrenome como atributos pra poder usar no assertEquals no final pra conferir se foi cadastrado/logado
    String nomeCadastro;
    String sobrenomeCadastro;


    //steps
    @Quando("informar nome {string}")
    public void informarNome(String nome) {
        this.nomeCadastro = nome;
        driver.manage().timeouts().implicitlyWait(10, TimeUnit.SECONDS); //aguarda alguns segundos pois site lento
        Na(CreateAccountPage.class).informaNome(nome);
    }

    @Quando("informar sobrenome {string}")
    public void informarSobrenome(String sobrenome) {
        this.sobrenomeCadastro = sobrenome;
        Na(CreateAccountPage.class).informaSobrenome(sobrenome);
    }

    @Quando("informar senha {string}")
    public void informarSenha(String senha) {
        Na(CreateAccountPage.class).informaSenha(senha);
    }

    @Quando("informar endereco {string}")
    public void informarEndereco(String endereco) {
        Na(CreateAccountPage.class).informaEndereco(endereco);
    }

    @Quando("informar cidade {string}")
    public void informarCidade(String cidade) {
        Na(CreateAccountPage.class).informaCidade(cidade);
    }

    @Quando("informar zipcode {string}")
    public void informarZipcode(String zip) {
        Na(CreateAccountPage.class).informaZipcode(zip);
    }

    @Quando("informar mobile-phone {string}")
    public void informarMobilePhone(String telefone) {
        Na(CreateAccountPage.class).informaTelefone1(telefone);
    }

    @Quando("informar phone {string}")
    public void informarPhone(String telefone) {
        Na(CreateAccountPage.class).informaTelefone2(telefone);
    }

    @Quando("selecionar pais {string}")
    public void selecionarPais(String pais) {
        Na(CreateAccountPage.class).selecionaPais(pais);
    }

    @Quando("selecionar um estado aleatorio")
    public void selecionarUmEstadoAleatorio() {
        int randomNumber = random.nextInt(51) + 1; //recebe um numero aleatorio entre 1 e 51 para variar o estado selecionado
        Na(CreateAccountPage.class).selecionaEstado(randomNumber);
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
