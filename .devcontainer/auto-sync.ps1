# Sincronizacao automatica em segundo plano para Windows (PC de Casa)
Set-Location (Split-Path -Parent $PSScriptRoot)

Write-Host "Auto-Sync EngenhariaDadosPOS ativo! Sincronizando com o GitHub a cada 60 segundos..." -ForegroundColor Green

while ($true) {
    Start-Sleep -Seconds 60
    git pull --rebase --autostash origin main 2>&1 | Out-Null
    $changes = git status --porcelain
    if ($changes) {
        $data = Get-Date -Format "dd/MM/yyyy HH:mm"
        git add -A
        git commit -m "Auto-sync (PC Casa): $data" 2>&1 | Out-Null
        git push origin main 2>&1 | Out-Null
        Write-Host "[$data] Alteracoes salvas e enviadas para o GitHub automaticamente!" -ForegroundColor Cyan
    }
}