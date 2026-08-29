# Aula 4 - Bug Report: Pagamento sem saldo

**Título:** App autoriza pagamento de conta sem saldo [Pagamento]

**Pré-condição:** Ter conta logada com saldo de R$50,00

**Passo a passo:**
1. Realizar login corretamente
2. Escolher a loja X e um produto de R$55
3. Selecionar forma de pagamento "saldo em conta"
4. Confirmar pedido

**Resultado Esperado:** Sistema deveria negar o pedido e exibir "pagamento não autorizado, saldo insuficiente"

**Resultado Real:** Pedido confirmado e saldo ficou negativo

**Evidência:** Print / vídeo da tela

**Severidade:** Alta - Falha financeira
