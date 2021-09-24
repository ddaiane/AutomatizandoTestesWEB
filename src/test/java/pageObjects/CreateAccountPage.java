package pageObjects;

import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.ui.Select;

public class CreateAccountPage {
    //elementos
    @FindBy(id = "customer_firstname")
    public WebElement inputNome;

    @FindBy(id = "customer_lastname")
    public WebElement inputSobrenome;

    @FindBy(id = "passwd")
    public WebElement inputSenha;

    @FindBy(id = "address1")
    public WebElement inputaddress1;

    @FindBy(id = "city")
    public WebElement inputCidade;

    @FindBy(id = "postcode")
    public WebElement inputZipcode;

    @FindBy(id = "phone")
    public WebElement inputTelefone1;

    @FindBy(id = "phone_mobile")
    public WebElement inputTelefone2;

    @FindBy(id = "id_state")
    public WebElement dropdownEstado;

    @FindBy(id = "id_country")
    public WebElement dropdownPais;

    @FindBy(id = "submitAccount")
    public WebElement botaoRegister;


    //metodos

    public void informaNome(String nome) {
        inputNome.sendKeys(nome);
    }
    public void informaSobrenome(String sobrenome) {
        inputSobrenome.sendKeys(sobrenome);
    }
    public void informaSenha(String senha) {
        inputSenha.sendKeys(senha);
    }
    public void informaEndereco(String endereco) {
        inputaddress1.sendKeys(endereco);
    }
    public void informaCidade(String cidade) {
        inputCidade.sendKeys(cidade);
    }
    public void informaZipcode(String zipcode) {
        inputZipcode.sendKeys(zipcode);
    }
    public void informaTelefone1(String telefone) {
        inputTelefone1.sendKeys(telefone);
    }
    public void informaTelefone2(String telefone) {
        inputTelefone2.sendKeys(telefone);
    }
    public void selecionaEstado(int index) {
        Select estado = new Select(dropdownEstado);
        if(index == 9) {index = 53;} //tem um bug no html da pagina que o item que deveria ter o index 9 na lista esta como 53
        estado.selectByIndex(index);
    }
    public void selecionaPais(String pais) {
        Select selecaoPais = new Select(dropdownPais);
        selecaoPais.selectByVisibleText(pais);
    }
    public void acionaRegister() {
        botaoRegister.click();
    }


}
