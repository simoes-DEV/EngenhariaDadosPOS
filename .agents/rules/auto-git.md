---
trigger: always_on
description: Mantem Casa (PC) e Trabalho (Tablet/Codespaces) 100% sincronizados via GitHub
---

# Sincronização Unificada Casa ↔ Trabalho (Auto-Git)

1. Antes de editar ou criar arquivos, rode git pull --rebase --autostash origin main para puxar o que foi feito no Codespaces (Tablet).
2. Ao concluir qualquer alteração solicitada pelo usuário, rode automaticamente git add -A, git commit -m "<resumo em português>" e git push origin main (usando BypassSandbox: true).
