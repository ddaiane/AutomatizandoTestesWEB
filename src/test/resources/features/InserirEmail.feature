#language: pt
  #encoding: UTF-8
@emailsInvalidos
Funcionalidade: Informar email pre-cadastro

  @cadastroEmailInvalido1
  Cenario: cadastrar usuario com email sem arroba
    Quando informar email "teste.com"
    E aciona o botao criar conta
    Entao sistema notifica email invalido

  @cadastroEmailInvalido2
  Cenario: cadastrar usuario com email com dominio fora do padrao
    Quando informar email "teste@com"
    E aciona o botao criar conta
    Entao sistema notifica email invalido

  @cadastroEmailInvalido3
  Cenario: cadastrar usuario com email fora do padrao
    Quando informar email "@teste.com"
    E aciona o botao criar conta
    Entao sistema notifica email invalido
