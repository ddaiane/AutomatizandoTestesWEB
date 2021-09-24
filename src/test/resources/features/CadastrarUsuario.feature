#language: pt
  #encoding: UTF-8
@cadastros
Funcionalidade: Cadastrar Usuario

  @cadastroValido1
  Cenario: cadastrar usuario com dados validos e telefone no input phone
    Quando informar email "emailvalidotesteteste@validoemailvalido.com"
    E acionar o botao criar conta
    E informar nome "Fulana"
    E informar sobrenome "da Silva"
    E informar senha "12345"
    E informar endereco "tal street, 1234"
    E informar cidade "New York"
    E informar zipcode "12345"
    E informar phone "123412345"
    E selecionar pais "United States"
    E selecionar um estado aleatorio
    E clicar register
    Entao aparece logado o usuario

  @cadastroValido2
  Cenario: cadastrar usuario com dados validos e telefone no input mobile-phone
    Quando informar email "testetesteemailvalidoteste@validoparateste.com"
    E acionar o botao criar conta
    E informar nome "Nome"
    E informar sobrenome "da Silva"
    E informar senha "1a2b3c"
    E informar endereco "rua tal, 1234"
    E informar cidade "São Paulo"
    E informar zipcode "01234"
    E informar mobile-phone "565652345"
    E selecionar pais "United States"
    E selecionar um estado aleatorio
    E clicar register
    Entao aparece logado o usuario

  @cadastroEmailInvalido1
  Cenario: cadastrar usuario com email sem arroba
    Quando informar email "teste.com"
    E acionar o botao criar conta
    Entao sistema notifica email invalido

  @cadastroEmailInvalido2
  Cenario: cadastrar usuario com email com dominio fora do padrao
    Quando informar email "teste@com"
    E acionar o botao criar conta
    Entao sistema notifica email invalido

  @cadastroEmailInvalido3
  Cenario: cadastrar usuario com email fora do padrao
    Quando informar email "@teste.com"
    E acionar o botao criar conta
    Entao sistema notifica email invalido

  @CadastroSemNome
  Cenario: cadastrar usuario sem informar nome
    Quando informar email "kjhfgyt6@valido.com"
    E acionar o botao criar conta
    E informar nome ""
    E informar sobrenome "Testatesta"
    E informar senha "12345ab"
    E informar endereco "tal street, 1234"
    E informar cidade "São Paulo"
    E informar zipcode "12345"
    E informar phone "123412345"
    E selecionar pais "United States"
    E selecionar um estado aleatorio
    E clicar register
    Entao sistema notifica falta dados

  @cadastroSemSobrenome
  Cenario: cadastrar usuario sem informar sobrenome
    Quando informar email "asfdkj1234@valido.com"
    E acionar o botao criar conta
    E informar nome "Nome"
    E informar sobrenome ""
    E informar senha "1a2b3c"
    E informar endereco "rua tal, 1234"
    E informar cidade "São Paulo"
    E informar zipcode "01234"
    E informar mobile-phone "565652345"
    E selecionar pais "United States"
    E selecionar um estado aleatorio
    E clicar register
    Entao sistema notifica falta dados

  @cadastroSobrenomeNulo
  Cenario: cadastrar usuario com sobrenome contendo apenas um espaco em branco
    Quando informar email "lfkguh9emailvalido@valido.com"
    E acionar o botao criar conta
    E informar nome "Nome"
    E informar sobrenome " "
    E informar senha "1a2b3c"
    E informar endereco "rua tal, 1234"
    E informar cidade "São Paulo"
    E informar zipcode "01234"
    E informar mobile-phone "565652345"
    E selecionar pais "United States"
    E selecionar um estado aleatorio
    E clicar register
    Entao sistema notifica falta dados

  @cadastroSenhaForaPadrao
  Cenario: cadastrar usuario com senha contendo menos que o minimo de caracteres (um caracter a menos)
    Quando informar email "hhgffs@valido.com"
    E acionar o botao criar conta
    E informar nome "Nome"
    E informar sobrenome "Umsobrenome"
    E informar senha "1234"
    E informar endereco "rua tal, 1234"
    E informar cidade "São Paulo"
    E informar zipcode "01234"
    E informar mobile-phone "565652345"
    E selecionar pais "United States"
    E selecionar um estado aleatorio
    E clicar register
    Entao sistema notifica falta dados

  @cadastroSemSenha
  Cenario: cadastrar usuario sem informar senha
    Quando informar email "dhshytdt@valido.com"
    E acionar o botao criar conta
    E informar nome "Nome"
    E informar sobrenome "Umsobrenome"
    E informar senha ""
    E informar endereco "rua tal, 1234"
    E informar cidade "São Paulo"
    E informar zipcode "01234"
    E informar mobile-phone "565652345"
    E selecionar pais "United States"
    E selecionar um estado aleatorio
    E clicar register
    Entao sistema notifica falta dados

  @cadastroSemEndereco
  Cenario: cadastrar usuario sem informar endereco
    Quando informar email "kkkfjhgh@valido.com"
    E acionar o botao criar conta
    E informar nome "Nome"
    E informar sobrenome "Umsobrenome"
    E informar senha "123456"
    E informar endereco ""
    E informar cidade "São Paulo"
    E informar zipcode "01234"
    E informar mobile-phone "565652345"
    E selecionar pais "United States"
    E selecionar um estado aleatorio
    E clicar register
    Entao sistema notifica falta dados

  @cadastroSemCidade
  Cenario: cadastrar usuario sem informar cidade
    Quando informar email "bvnjdjo@valido.com"
    E acionar o botao criar conta
    E informar nome "Nome"
    E informar sobrenome "Umsobrenome"
    E informar senha "123456"
    E informar endereco "Rua tal, 3456"
    E informar cidade ""
    E informar zipcode "01234"
    E informar mobile-phone "565652345"
    E selecionar pais "United States"
    E selecionar um estado aleatorio
    E clicar register
    Entao sistema notifica falta dados

  @cadastroSemZipCode
  Cenario: cadastrar usuario sem informar zipcode
    Quando informar email "fhdfdfdg@valido.com"
    E acionar o botao criar conta
    E informar nome "Nome"
    E informar sobrenome "Umsobrenome"
    E informar senha "123456"
    E informar endereco "Rua tal, 3456"
    E informar cidade "Rio de Janeiro"
    E informar zipcode ""
    E informar mobile-phone "565652345"
    E selecionar pais "United States"
    E selecionar um estado aleatorio
    E clicar register
    Entao sistema notifica falta dados

  @cadastroZipCodeMaior
  Cenario: cadastrar usuario informando zipcode com mais digitos do que o definido (um digito a mais)
    Quando informar email "emailemailemail@valido.com"
    E acionar o botao criar conta
    E informar nome "Nome"
    E informar sobrenome "Umsobrenome"
    E informar senha "123456"
    E informar endereco "Rua tal, 3456"
    E informar cidade "Rio de Janeiro"
    E informar zipcode "123456"
    E informar mobile-phone "565652345"
    E selecionar pais "United States"
    E selecionar um estado aleatorio
    E clicar register
    Entao sistema notifica falta dados

  @cadastroZipCodeMenor
  Cenario: cadastrar usuario informando zipcode com menos digitos do que o definido (um digito a menos)
    Quando informar email "emaildousuario@valido.com"
    E acionar o botao criar conta
    E informar nome "Nome"
    E informar sobrenome "Umsobrenome"
    E informar senha "123456"
    E informar endereco "Rua tal, 3456"
    E informar cidade "Rio de Janeiro"
    E informar zipcode "1234"
    E informar mobile-phone "565652345"
    E selecionar pais "United States"
    E selecionar um estado aleatorio
    E clicar register
    Entao sistema notifica falta dados

  @cadastroZipCodeForaPadrao
  Cenario: cadastrar usuario informando zipcode com caractere que nao seja numero
    Quando informar email "maisoutroemailvalido@valido.com"
    E acionar o botao criar conta
    E informar nome "Nome"
    E informar sobrenome "Umsobrenome"
    E informar senha "123456"
    E informar endereco "Rua tal, 3456"
    E informar cidade "Rio de Janeiro"
    E informar zipcode "Z1234"
    E informar mobile-phone "565652345"
    E selecionar pais "United States"
    E selecionar um estado aleatorio
    E clicar register
    Entao sistema notifica falta dados

  @cadastroSemTelefone
  Cenario: cadastrar usuario sem informar telefone
    Quando informar email "outroemailvalido@valido.com"
    E acionar o botao criar conta
    E informar nome "Nome"
    E informar sobrenome "Umsobrenome"
    E informar senha "123456"
    E informar endereco "Rua tal, 3456"
    E informar cidade "Rio de Janeiro"
    E informar zipcode "12345"
    E selecionar pais "United States"
    E selecionar um estado aleatorio
    E clicar register
    Entao sistema notifica falta dados

  @cadastroTelefoneForaPadrao
  Cenario: cadastrar usuario informando telefone com letras
    Quando informar email "validovalidovalido@valido.com"
    E acionar o botao criar conta
    E informar nome "Nome"
    E informar sobrenome "Umsobrenome"
    E informar senha "123456"
    E informar endereco "Rua tal, 3456"
    E informar cidade "Rio de Janeiro"
    E informar zipcode "01234"
    E informar mobile-phone "abcdefg"
    E selecionar pais "United States"
    E selecionar um estado aleatorio
    E clicar register
    Entao sistema notifica falta dados

  @cadastroSemPais
  Cenario: cadastrar usuario selecionando a opcao "-" no pais
    Quando informar email "hdgbnnmp@valido.com"
    E acionar o botao criar conta
    E informar nome "Nome"
    E informar sobrenome "Umsobrenome"
    E informar senha "123456"
    E informar endereco "Rua tal, 3456"
    E informar cidade "Rio de Janeiro"
    E informar zipcode "Z1234"
    E informar mobile-phone "565652345"
    E selecionar um estado aleatorio
    E selecionar pais "-"
    E clicar register
    Entao sistema notifica falta dados

  @cadastroSemEstado
  Cenario: cadastrar usuario sem selecionar estado
    Quando informar email "vbmhjh@valido.com"
    E acionar o botao criar conta
    E informar nome "Nome"
    E informar sobrenome "Umsobrenome"
    E informar senha "123456"
    E informar endereco "Rua tal, 3456"
    E informar cidade "Rio de Janeiro"
    E informar zipcode "01234"
    E informar mobile-phone "565652345"
    E selecionar pais "United States"
    E clicar register
    Entao sistema notifica falta dados