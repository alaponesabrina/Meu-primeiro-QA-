# Casos de Teste - Pagamento VR

Este arquivo descreve os testes que eu pensei para validar o pagamento.

### Tecnicas usadas:
1.  Particionamento de Equivalencia: separei em grupos (com saldo, sem saldo, saldo zerado)
2.  Analise de Valor Limite: testei o caso onde o valor é EXATAMENTE igual ao saldo (R$40,00) - que é onde mais da bug.
3.  Teste Negativo: testei quando tem que dar erro de proposito ("saldo insuficiente")

### Por que fiz assim?
Pensei no risco real do usuario: ele tentar pagar sem ter dinheiro e o app deixar passar. Por isso criei cenarios que garantem que o sistema nega.
