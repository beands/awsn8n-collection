# 🚀 Скрипт для добавления новых воркфлоу в папку beands
# Автор: beands (https://beands-media.ru)

param(
    [Parameter(Mandatory=$true)]
    [string]$WorkflowFile,
    
    [Parameter(Mandatory=$false)]
    [string]$Description = "Custom workflow by beands"
)

Write-Host "🚀 Добавление нового воркфлоу в коллекцию beands..." -ForegroundColor Yellow

# Проверяем, что файл существует
if (-not (Test-Path $WorkflowFile)) {
    Write-Host "❌ Файл не найден: $WorkflowFile" -ForegroundColor Red
    exit 1
}

# Получаем следующий номер для воркфлоу
$beandsFolder = "workflows\beands"
$existingFiles = Get-ChildItem -Path $beandsFolder -Filter "*.json" | Where-Object { $_.Name -match '^\d{3}_' }
$maxNumber = 0

foreach ($file in $existingFiles) {
    $number = [int]($file.Name -replace '^(\d{3})_.*', '$1')
    if ($number -gt $maxNumber) {
        $maxNumber = $number
    }
}

$nextNumber = $maxNumber + 1
$nextNumberFormatted = "{0:D3}" -f $nextNumber

# Создаем имя файла
$fileName = Split-Path $WorkflowFile -Leaf
$baseName = [System.IO.Path]::GetFileNameWithoutExtension($fileName)
$newFileName = "${nextNumberFormatted}_${baseName}.json"

# Копируем файл в папку beands
$destinationPath = Join-Path $beandsFolder $newFileName
Copy-Item -Path $WorkflowFile -Destination $destinationPath

Write-Host "✅ Воркфлоу добавлен: $newFileName" -ForegroundColor Green
Write-Host "📁 Путь: $destinationPath" -ForegroundColor Cyan

# Показываем информацию о добавленном файле
$fileInfo = Get-Item $destinationPath
Write-Host "📊 Размер: $($fileInfo.Length) байт" -ForegroundColor Yellow
Write-Host "🕒 Время добавления: $($fileInfo.CreationTime)" -ForegroundColor Yellow

Write-Host ""
Write-Host "💡 Для применения изменений:" -ForegroundColor Cyan
Write-Host "   1. Перезапустите сервер: py run.py --reindex" -ForegroundColor White
Write-Host "   2. Или используйте API для переиндексации" -ForegroundColor White
Write-Host ""
Write-Host "🌐 Веб-интерфейс: http://localhost:8000" -ForegroundColor Green
Write-Host "🔍 API поиск: http://localhost:8000/api/workflows" -ForegroundColor Green
