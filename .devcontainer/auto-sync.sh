#!/usr/bin/env bash
# Sincronizacao automatica em segundo plano para uso no Tablet (GitHub Codespaces).
# A cada 60 segundos verifica se houve alteracao nos arquivos, faz pull e envia (push) automaticamente.

cd "$(dirname "$0")/.." || exit 1

while true; do
  sleep 60
  git pull --rebase --autostash origin main >/dev/null 2>&1 || true
  if [ -n "$(git status --porcelain)" ]; then
    git add -A
    git commit -m "Auto-sync (Tablet / Codespaces): $(date '+%d/%m/%Y %H:%M')" >/dev/null 2>&1 || true
    git push origin main >/dev/null 2>&1 || true
  fi
done
