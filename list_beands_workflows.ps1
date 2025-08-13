# 📋 Скрипт для просмотра воркфлоу в папке beands
# Автор: beands (https://beands-media.ru)

Write-Host "📋 Воркфлоу в папке beands:" -ForegroundColor Yellow
Write-Host "=" * 50 -ForegroundColor Cyan

$beandsFolder = "workflows\beands"

if (-not (Test-Path $beandsFolder)) {
    Write-Host "❌ Папка beands не найдена!" -ForegroundColor Red
    exit 1
}

$workflowFiles = Get-ChildItem -Path $beandsFolder -Filter "*.json" | Sort-Object Name

if ($workflowFiles.Count -eq 0) {
    Write-Host "📭 Папка beands пуста. Добавьте свои воркфлоу!" -ForegroundColor Yellow
    Write-Host ""
    Write-Host "💡 Как добавить воркфлоу:" -ForegroundColor Cyan
    Write-Host "   1. Экспортируйте воркфлоу из n8n в JSON" -ForegroundColor White
    Write-Host "   2. Используйте: .\add_workflow.ps1 путь_к_файлу.json" -ForegroundColor White
    Write-Host "   3. Или скопируйте файл вручную в папку workflows\beands" -ForegroundColor White
} else {
    Write-Host "📊 Найдено воркфлоу: $($workflowFiles.Count)" -ForegroundColor Green
    Write-Host ""
    
    foreach ($file in $workflowFiles) {
        $fileInfo = Get-Item $file.FullName
        $sizeKB = [math]::Round($fileInfo.Length / 1KB, 2)
        
        Write-Host "🔹 $($file.Name)" -ForegroundColor Green
        Write-Host "   📁 Размер: $sizeKB KB" -ForegroundColor White
        Write-Host "   🕒 Создан: $($fileInfo.CreationTime.ToString('dd.MM.yyyy HH:mm'))" -ForegroundColor White
        Write-Host "   ✏️ Изменен: $($fileInfo.LastWriteTime.ToString('dd.MM.yyyy HH:mm'))" -ForegroundColor White
        Write-Host ""
    }
    
    Write-Host "💡 Команды:" -ForegroundColor Cyan
    Write-Host "   • Добавить воркфлоу: .\add_workflow.ps1 путь_к_файлу.json" -ForegroundColor White
    Write-Host "   • Запустить сервер: py run.py --reindex" -ForegroundColor White
    Write-Host "   • Открыть веб-интерфейс: http://localhost:8000" -ForegroundColor White
}

Write-Host ""
Write-Host "🚀 AWS N8N Collection - beands workflows" -ForegroundColor Green
Write-Host "🌐 https://beands-media.ru | @beands" -ForegroundColor Cyan
