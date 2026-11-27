# Sincronizacao automatica em segundo plano para Windows (PC de Casa)
$repoRoot = Split-Path -Parent $PSScriptRoot
Set-Location $repoRoot

$oracleSrc = "C:\Users\simoes-dev\Desktop\ORACLE - UDEMY"
$oracleDest = Join-Path $repoRoot "oracle_udemy"

Write-Host "Auto-Sync EngenhariaDadosPOS + ORACLE-UDEMY ativo! Sincronizando a cada 60 segundos..." -ForegroundColor Green

while ($true) {
    # Espelha automaticamente novos scripts .sql da pasta ORACLE - UDEMY (ignorando instaladores e senhas)
    if (Test-Path $oracleSrc) {
        if (-not (Test-Path $oracleDest)) { New-Item -ItemType Directory -Force -Path $oracleDest | Out-Null }
        Get-ChildItem -Path $oracleSrc -Filter "*.sql" -File -ErrorAction SilentlyContinue | ForEach-Object {
            $destFile = Join-Path $oracleDest $_.Name
            if ((-not (Test-Path $destFile)) -or ($_.LastWriteTime -gt (Get-Item $destFile).LastWriteTime)) {
                Copy-Item -Path $_.FullName -Destination $destFile -Force
            }
        }
    }

    git pull --rebase --autostash origin main 2>&1 | Out-Null
    $changes = git status --porcelain
    if ($changes) {
        $data = Get-Date -Format "dd/MM/yyyy HH:mm"
        git add -A
        git commit -m "Auto-sync (PC Casa - Python & Oracle SQL): $data" 2>&1 | Out-Null
        git push origin main 2>&1 | Out-Null
        Write-Host "[$data] Alteracoes salvas e enviadas para o GitHub automaticamente!" -ForegroundColor Cyan
    }
    Start-Sleep -Seconds 60
}