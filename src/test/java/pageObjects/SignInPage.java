package pageObjects;

import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;

public class SignInPage {
    //elementos
    @FindBy(id = "email_create")
    public WebElement inputEmail;

    @FindBy(id = "SubmitCreate")
    public WebElement botaoCriarConta;

    @FindBy(xpath = "//div[@id='create_account_error']//li[contains(text(), 'Invalid email address')]")
    public WebElement avisoErro;

    //metodos
    public void informarEmail(String email) {
        inputEmail.sendKeys(email);
    }

    public void acionarBotaoCriarConta() {
        botaoCriarConta.click();
    }
}
