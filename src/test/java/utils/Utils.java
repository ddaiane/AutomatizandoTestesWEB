package utils;

import io.cucumber.core.api.Scenario;
import org.openqa.selenium.OutputType;
import org.openqa.selenium.TakesScreenshot;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.support.PageFactory;

import java.util.concurrent.TimeUnit;

public class Utils {

    public static WebDriver driver;

    public static void acessarSistema() {
        System.setProperty("webdriver.chrome.driver", "C:\\driver\\chromedriver.exe");
        driver = new ChromeDriver(); //instancia o chromedriver
        driver.manage().window().maximize(); //abrir o navegador em tela cheia
        driver.manage().timeouts().implicitlyWait(5, TimeUnit.SECONDS); //espera até 5 segundos pra tela carregar

        driver.get("http://automationpractice.com/"); //acessa pagina web
    }

    public static <T> T Na(Class<T> classe) { //recebe no parametro a classe onde estao os elementos de interesse pageFactory
        return PageFactory.initElements(driver, classe); //instancia os elementos pra poder usar
    }

    public static void capturarTela(Scenario scenario) { //metodo para screenshots
        final byte[] screenshot = ((TakesScreenshot)driver).getScreenshotAs(OutputType.BYTES);
        scenario.embed(screenshot, "image/png");
    }
}
