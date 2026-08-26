Funcionalidade: Pagamento com VR

  Cenario: Pagar quando tenho saldo
    Dado que tenho R$50,00 de saldo VR
    Quando tento pagar um pedido de R$40,00
    Entao o pagamento tem que ser aprovado

  Cenario: Nao pagar quando nao tenho saldo
    Dado que tenho R$10,00 de saldo VR
    Quando tento pagar um pedido de R$40,00
    Entao tem que aparecer "saldo insuficiente"

  Cenario: Pagar com valor exato
    Dado que tenho R$40,00 de saldo VR
    Quando tento pagar um pedido de R$40,00
    Entao tem que aprovar e zerar meu saldo

  Cenario: Nao pagar com saldo zerado
    Dado que tenho R$0,00 de saldo VR
    Quando tento pagar qualquer valor
    Entao tem que negar
