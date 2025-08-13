# Скрипт для просмотра воркфлоу в папке beands
# Автор: beands (https://beands-media.ru)

Write-Host "Workflows in beands folder:" -ForegroundColor Yellow
Write-Host "==========================" -ForegroundColor Cyan

$beandsFolder = "workflows\beands"

if (-not (Test-Path $beandsFolder)) {
    Write-Host "ERROR: beands folder not found!" -ForegroundColor Red
    exit 1
}

$workflowFiles = Get-ChildItem -Path $beandsFolder -Filter "*.json" | Sort-Object Name

if ($workflowFiles.Count -eq 0) {
    Write-Host "Folder is empty. Add your workflows!" -ForegroundColor Yellow
    Write-Host ""
    Write-Host "How to add workflow:" -ForegroundColor Cyan
    Write-Host "1. Export workflow from n8n to JSON" -ForegroundColor White
    Write-Host "2. Use: .\add_workflow.ps1 path_to_file.json" -ForegroundColor White
    Write-Host "3. Or copy file manually to workflows\beands folder" -ForegroundColor White
} else {
    Write-Host "Found workflows: $($workflowFiles.Count)" -ForegroundColor Green
    Write-Host ""
    
    foreach ($file in $workflowFiles) {
        $fileInfo = Get-Item $file.FullName
        $sizeKB = [math]::Round($fileInfo.Length / 1KB, 2)
        
        Write-Host "- $($file.Name)" -ForegroundColor Green
        Write-Host "  Size: $sizeKB KB" -ForegroundColor White
        Write-Host "  Created: $($fileInfo.CreationTime.ToString('dd.MM.yyyy HH:mm'))" -ForegroundColor White
        Write-Host "  Modified: $($fileInfo.LastWriteTime.ToString('dd.MM.yyyy HH:mm'))" -ForegroundColor White
        Write-Host ""
    }
    
    Write-Host "Commands:" -ForegroundColor Cyan
    Write-Host "  Add workflow: .\add_workflow.ps1 path_to_file.json" -ForegroundColor White
    Write-Host "  Start server: py run.py --reindex" -ForegroundColor White
    Write-Host "  Web interface: http://localhost:8000" -ForegroundColor White
}

Write-Host ""
Write-Host "AWS N8N Collection - beands workflows" -ForegroundColor Green
Write-Host "https://beands-media.ru | @beands" -ForegroundColor Cyan
