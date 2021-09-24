package stepsDefinitions;

import io.cucumber.java.After;
import io.cucumber.java.Before;
import io.cucumber.core.api.Scenario;

import pageObjects.TelaInicialPage;
import static utils.Utils.*;

public class Hooks {
    @Before(value="@cadastros") //acessa a pagina e clica no botao que leva para o cadastro
    public void setUp() {
        acessarSistema();
        Na(TelaInicialPage.class).acionarBotaoEntrar();
    }

    @After
    public void tearDown(Scenario scenario) { //screenshot e fecha navegador
        capturarTela(scenario);
        driver.quit();
    }

}
