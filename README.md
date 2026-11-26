# Pós-Graduação em Engenharia de Dados 🎓

Repositório unificado de estudos, práticas, pipelines e projetos da Pós em Engenharia de Dados.
Configurado para sincronização automática entre **Casa (PC Desktop)** e **Trabalho (Tablet via GitHub Codespaces)**.

## Estrutura de Pastas
- ulas/ — Anotações, notebooks (.ipynb) e exercícios de aula.
- projetos/ — Pipelines, ETL/ELT, scripts Python e SQL.
- dados/ — Arquivos de dados de exemplo (.csv, .parquet, .json, .db).

## Sincronização Automática
- **No Tablet (GitHub Codespaces)**: O uto-Save salva cada arquivo a cada 1 segundo, e o serviço .devcontainer/auto-sync.sh faz pull, commit e push automaticamente a cada 60 segundos em segundo plano.
- **Em Casa (PC / Antigravity)**: As regras em AGENTS.md e .agents/rules/auto-git.md garantem git pull ao iniciar e git commit + git push automático a cada alteração.
