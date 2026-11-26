# Regras do Projeto (EngenhariaDadosPOS)

## Sincronização Unificada Casa ↔ Trabalho (Tablet / GitHub Codespaces)
Este repositório é usado em dois lugares que devem funcionar sempre como **um só**:
- **No trabalho**: via Tablet usando GitHub Codespaces.
- **Em casa**: via PC Desktop no Antigravity.

### Regras obrigatórias para o Agente:
1. **Antes de iniciar qualquer edição**: execute sempre git pull --rebase --autostash origin main (com BypassSandbox: true no Windows) para garantir que tudo o que foi feito no Tablet/Codespaces seja baixado primeiro.
2. **Ao finalizar qualquer alteração ou criação de arquivo**: execute automaticamente:
   - git add -A
   - git commit -m "<resumo em português>"
   - git push origin main
3. Confirme brevemente ao usuário que o repositório https://github.com/simoes-DEV/EngenhariaDadosPOS já está sincronizado para uso no PC e no Tablet.
