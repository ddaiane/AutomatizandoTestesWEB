#language: pt
  #encoding: UTF-8
@cadastros
Funcionalidade: Cadastrar Usuario

  Contexto:
    Dado que informou email aleatorio valido
    E aciona o botao criar conta

  @cadastroValido1
  Cenario: cadastrar usuario com dados validos e telefone no input phone
    Quando informar nome aleatorio
    E informar sobrenome aleatorio
    E informar senha valida aleatoria
    E informar endereco aleatorio
    E informar cidade aleatorio
    E informar zipcode com 5 caracteres
    E informar phone aleatorio
    E selecionar pais "United States"
    E selecionar um estado aleatorio
    E clicar register
    Entao aparece logado o usuario

  @cadastroValido2
  Cenario: cadastrar usuario com dados validos e telefone no input mobile-phone
    Quando informar nome aleatorio
    E informar sobrenome aleatorio
    E informar senha valida aleatoria
    E informar endereco aleatorio
    E informar cidade aleatorio
    E informar zipcode com 5 caracteres
    E informar mobile-phone aleatorio
    E selecionar pais "United States"
    E selecionar um estado aleatorio
    E clicar register
    Entao aparece logado o usuario


  @CadastroSemNome
  Cenario: cadastrar usuario sem informar nome
    Quando informar sobrenome aleatorio
    E informar senha valida aleatoria
    E informar endereco aleatorio
    E informar cidade aleatorio
    E informar zipcode com 5 caracteres
    E informar mobile-phone aleatorio
    E selecionar pais "United States"
    E selecionar um estado aleatorio
    Mas nao informar campo "nome"
    E clicar register
    Entao sistema notifica falta dados

  @cadastroSemSobrenome
  Cenario: cadastrar usuario sem informar sobrenome
    Quando informar nome aleatorio
    E informar senha valida aleatoria
    E informar endereco aleatorio
    E informar cidade aleatorio
    E informar zipcode com 5 caracteres
    E informar mobile-phone aleatorio
    E selecionar pais "United States"
    E selecionar um estado aleatorio
    Mas nao informar campo "nome"
    E clicar register
    Entao sistema notifica falta dados
    

  @cadastroSenhaForaPadrao
  Cenario: cadastrar usuario com senha contendo menos que o minimo de caracteres (um caracter a menos)
    Quando informar nome aleatorio
    E informar sobrenome aleatorio
    E informar senha aleatoria com 4 digitos
    E informar endereco aleatorio
    E informar cidade aleatorio
    E informar zipcode com 5 caracteres
    E informar mobile-phone aleatorio
    E selecionar pais "United States"
    E selecionar um estado aleatorio
    E clicar register
    Entao sistema notifica falta dados

  @cadastroSemSenha
  Cenario: cadastrar usuario sem informar senha
    Quando informar nome aleatorio
    E informar sobrenome aleatorio
    E informar endereco aleatorio
    E informar cidade aleatorio
    E informar zipcode com 5 caracteres
    E informar phone aleatorio
    E selecionar pais "United States"
    E selecionar um estado aleatorio
    Mas nao informar campo "senha"
    E clicar register
    Entao sistema notifica falta dados

  @cadastroSemEndereco
  Cenario: cadastrar usuario sem informar endereco
    Quando informar nome aleatorio
    E informar sobrenome aleatorio
    E informar senha valida aleatoria
    E informar cidade aleatorio
    E informar zipcode com 5 caracteres
    E informar phone aleatorio
    E selecionar pais "United States"
    E selecionar um estado aleatorio
    Mas nao informar campo "endereco"
    E clicar register
    Entao sistema notifica falta dados

  @cadastroSemCidade
  Cenario: cadastrar usuario sem informar cidade
    Quando informar nome aleatorio
    E informar sobrenome aleatorio
    E informar senha valida aleatoria
    E informar endereco aleatorio
    E informar zipcode com 5 caracteres
    E informar phone aleatorio
    E selecionar pais "United States"
    E selecionar um estado aleatorio
    Mas nao informar campo "cidade"
    E clicar register
    Entao sistema notifica falta dados

  @cadastroSemZipCode
  Cenario: cadastrar usuario sem informar zipcode
    Quando informar nome aleatorio
    E informar sobrenome aleatorio
    E informar senha valida aleatoria
    E informar endereco aleatorio
    E informar cidade aleatorio
    E informar phone aleatorio
    E selecionar pais "United States"
    E selecionar um estado aleatorio
    Mas nao informar campo "zipcode"
    E clicar register
    Entao sistema notifica falta dados

  @cadastroZipCodeMaior
  Cenario: cadastrar usuario informando zipcode com mais digitos do que o definido (um digito a mais)
    Quando informar nome aleatorio
    E informar sobrenome aleatorio
    E informar senha valida aleatoria
    E informar endereco aleatorio
    E informar cidade aleatorio
    E informar zipcode com 6 caracteres
    E informar mobile-phone aleatorio
    E selecionar pais "United States"
    E selecionar um estado aleatorio
    E clicar register
    Entao sistema notifica falta dados

  @cadastroZipCodeMenor
  Cenario: cadastrar usuario informando zipcode com menos digitos do que o definido (um digito a menos)
    Quando informar nome aleatorio
    E informar sobrenome aleatorio
    E informar senha valida aleatoria
    E informar endereco aleatorio
    E informar cidade aleatorio
    E informar zipcode com 4 caracteres
    E informar mobile-phone aleatorio
    E selecionar pais "United States"
    E selecionar um estado aleatorio
    E clicar register
    Entao sistema notifica falta dados

  @cadastroZipCodeForaPadrao
  Cenario: cadastrar usuario informando zipcode com extensao correta porem caractere que nao seja numero
    Quando informar nome aleatorio
    E informar sobrenome aleatorio
    E informar senha valida aleatoria
    E informar endereco aleatorio
    E informar cidade aleatorio
    E informar zipcode "B1234"
    E informar mobile-phone aleatorio
    E selecionar pais "United States"
    E selecionar um estado aleatorio
    E clicar register
    Entao sistema notifica falta dados

  @cadastroSemTelefone
  Cenario: cadastrar usuario sem informar telefone
    Quando informar nome aleatorio
    E informar sobrenome aleatorio
    E informar senha valida aleatoria
    E informar endereco aleatorio
    E informar cidade aleatorio
    E informar zipcode com 5 caracteres
    E selecionar pais "United States"
    E selecionar um estado aleatorio
    Mas nao informar campo "telefone"
    E clicar register
    Entao sistema notifica falta dados

  @cadastroTelefoneForaPadrao
  Cenario: cadastrar usuario informando telefone com letras
    Quando informar nome aleatorio
    E informar sobrenome aleatorio
    E informar senha valida aleatoria
    E informar endereco aleatorio
    E informar cidade aleatorio
    E informar zipcode com 5 caracteres
    E informar mobile-phone "abcdefg"
    E selecionar pais "United States"
    E selecionar um estado aleatorio
    E clicar register
    Entao sistema notifica falta dados

  @cadastroSemPais
  Cenario: cadastrar usuario selecionando a opcao "-" no pais
    Quando informar nome aleatorio
    E informar sobrenome aleatorio
    E informar senha valida aleatoria
    E informar endereco aleatorio
    E informar cidade aleatorio
    E informar zipcode com 5 caracteres
    E informar phone aleatorio
    E selecionar pais "-"
    E selecionar um estado aleatorio
    E clicar register
    Entao sistema notifica falta dados

  @cadastroSemEstado
  Cenario: cadastrar usuario sem selecionar estado
    Quando informar nome aleatorio
    E informar sobrenome aleatorio
    E informar senha valida aleatoria
    E informar endereco aleatorio
    E informar cidade aleatorio
    E informar zipcode com 5 caracteres
    E informar phone aleatorio
    E selecionar pais "United States"
    Mas nao informar campo "estado"
    E clicar register
    Entao sistema notifica falta dados