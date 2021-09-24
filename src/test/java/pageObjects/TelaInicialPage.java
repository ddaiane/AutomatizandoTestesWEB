package pageObjects;

import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;

public class TelaInicialPage {

    //elementos
    @FindBy(linkText = "Sign in")
    public WebElement botaoEntrar;

    //metodos
    public void acionarBotaoEntrar() {
        botaoEntrar.click();
    } //acessa a pagina de cadastro


}
