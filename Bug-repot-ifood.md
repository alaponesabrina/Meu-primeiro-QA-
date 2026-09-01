# Relatório de Teste Exploratório - App iFood

**Testadora:** Sabrina Medeiros
**Data:** 01/09/2026
**Tipo de Teste:** Exploratório / Cadastro

### Cenário 1: Validação de CPF duplicado - OK
- **Ação:** Tentei criar Conta B com telefone DIFERENTE e mesmo CPF de uma conta existente.
- **Resultado:** Sistema bloqueou corretamente com mensagem "Infelizmente, este acesso não está disponível."
- **Conclusão:** Validação de CPF funciona quando o telefone é diferente.

### Cenário 2: Validação de telefone duplicado - BUG INTERMITENTE
- **Ação:** Tentei criar Conta B com MESMO telefone, email diferente e mesmo CPF.
- **Resultado 1ª tentativa:** Sistema PERMITIU criar uma nova conta totalmente zerada, sem trazer pedidos e cartões da conta antiga.
- **Resultado 2ª tentativa:** Ao tentar repetir o mesmo fluxo, o app passou a exibir erro genérico "Tivemos um problema por aqui".
- **Esperado:** O sistema deveria desde a primeira vez bloquear e exibir "Telefone já cadastrado. Faça login" e nunca criar conta zerada.

### Conclusão da Testadora
Identifiquei comportamento inconsistente na validação de telefone. Na primeira execução houve falha de integridade (criou conta duplicada zerada). Nas execuções seguintes o sistema apresentou bloqueio, mas com mensagem de erro genérica e sem tratamento. 

**Sugestão de Melhoria:** Tratar mensagem de erro para "Telefone já cadastrado" em vez de "Tivemos um problema".

**Status:** Documentado sem evidência de print por se tratar de bug intermitente e bloqueio de anti-fraude após primeira ocorrência.
