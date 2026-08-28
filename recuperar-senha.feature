@recuperacao_senha @regressivo @portifolio
Funcionalidade: Esqueci minha senha
  Como usuário cadastrado
  Quero recuperar minha senha
  Para voltar a acessar minha conta

  Contexto:
    Dado que estou na tela de login
    E clico em "Esqueci minha senha"

  @positivo @feliz
  Cenario: Solicitar redefinicao com email valido
    Quando informo o email "valido@email.com"
    E clico em "Enviar link"
    Entao vejo a mensagem "Link enviado para seu email"

  @negativo @triste
  Cenario: Solicitar redefinicao com email nao cadastrado
    Quando informo o email "naoexiste@email.com"
    E clico em "Enviar link"
    Entao vejo a mensagem "Usuario nao encontrado"

  Esquema do Cenario: Validar formatos de email invalidos - Caminho da Maldade
    Quando informo o email "<email_invalido>"
    E clico em "Enviar link"
    Entao vejo a mensagem "Digite um email em formato valido"

    Exemplos:
      | email_invalido    |
      | Teste.com         |
      | Teste@.com        |
      | Teste@gmail..com  |
      | teste@@@gmail.com |
