package stepsDefinitions;
import static utils.Utils.*;
import pageObjects.SignInPage;

import org.openqa.selenium.By;
import io.cucumber.java.pt.Entao;
import io.cucumber.java.pt.Quando;

import java.util.Random;
import java.util.concurrent.TimeUnit;
import static org.junit.Assert.assertTrue;

public class EmailSteps {
    //numero random para gerar email diferente a cada vez
    Random random = new Random();

    @Quando("informar email aleatorio")
    public void informarEmailAleatorio() {
        int emailRandom = random.nextInt(200);
        int dominioRandom = random.nextInt(200);
        String email = "emailValido" + emailRandom + "@dominio" + dominioRandom + ".com";
        Na(SignInPage.class).informarEmail(email);
    }

    @Quando("informar email {string}") //metodo que passa uma string especifica para passar emails invalidos
    public void informarEmail(String email) {
        Na(SignInPage.class).informarEmail(email);
    }

    @Quando("acionar o botao criar conta")
    public void acionarOBotaoCriarConta() {
        Na(SignInPage.class).acionarBotaoCriarConta();
    }


    @Entao("sistema notifica email invalido")
    public void sistemaNotificaEmailInvalido() {
        driver.manage().timeouts().implicitlyWait(10, TimeUnit.SECONDS); //aguarda alguns segundos pois site lento
        assertTrue(driver.findElement(By.xpath(
                "//div[@id='create_account_error']//li[contains(text(), 'Invalid email address')]")).isDisplayed());
    }
}
