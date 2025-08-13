# 🚀 AWS N8N Collection

**Comprehensive automation workflows for AWS services and beyond**

[![GitHub stars](https://img.shields.io/github/stars/beands/awsn8n-collection.svg)](https://github.com/beands/awsn8n-collection/stargazers)
[![GitHub forks](https://img.shields.io/github/forks/beands/awsn8n-collection.svg)](https://github.com/beands/awsn8n-collection/network)
[![GitHub issues](https://img.shields.io/github/issues/beands/awsn8n-collection.svg)](https://github.com/beands/awsn8n-collection/issues)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

---

## 📋 About

**AWS N8N Collection** - это профессионально организованная коллекция **2,055+ n8n воркфлоу** с молниеносной системой документации, обеспечивающей мгновенный поиск, анализ и просмотр возможностей.

### 🌟 **Key Features**

- ⚡ **Sub-100ms response times** с SQLite FTS5 поиском
- 🔍 **Мгновенный полнотекстовый поиск** с расширенной фильтрацией
- 📱 **Адаптивный дизайн** - идеально работает на мобильных устройствах
- 🌙 **Темная/светлая темы** с автоматическим определением системных настроек
- 📊 **Живая статистика** - 365+ уникальных интеграций, 29,445+ общих узлов
- 🎯 **Умная категоризация** по типу триггера и сложности
- 🎯 **Категоризация по вариантам использования** по названию сервиса
- 📄 **Просмотр и загрузка JSON** по требованию
- 🔗 **Генерация диаграмм Mermaid** для визуализации воркфлоу
- 🔄 **Реальное время именования воркфлоу** с интеллектуальным форматированием

---

## 🚀 Quick Start

### Fast Documentation System

```bash
# Установка зависимостей
pip install -r requirements.txt

# Запуск быстрого API сервера
python run.py

# Открыть в браузере
http://localhost:8000
```

### Node.js Alternative

```bash
# Установка зависимостей
npm install

# Запуск сервера
npm start

# Режим разработки
npm run dev
```

---

## 📂 Repository Organization

### Workflow Collection
- **2,055+ воркфлоу** с осмысленными, поисковыми названиями
- **365+ уникальных интеграций** на популярных платформах
- **29,445+ общих узлов** с профессиональной категоризацией
- **Контроль качества** - Все воркфлоу проанализированы и категоризированы

### 🚀 **Exclusive Beands Collection**
- **9 эксклюзивных воркфлоу** в папке `workflows/beands/`
- **AI-решения** с современными моделями (Gemini, Llama, DeepSeek)
- **Бизнес-автоматизация** для стартапов и предприятий
- **Постоянные обновления** - ежемесячно новые решения

### Advanced Naming System ✨
Наша интеллектуальная система именования преобразует технические имена файлов в читаемые заголовки:
- **До**: `2051_Telegram_Webhook_Automation_Webhook.json`
- **После**: `Telegram Webhook Automation`
- **100% осмысленные имена** с умной капитализацией
- **Автоматическое обнаружение интеграций** из анализа узлов

### Use Case Categories ✨

Интерфейс поиска включает выпадающий фильтр, позволяющий просматривать 2000+ воркфлоу по категориям.

Система включает автоматизированную функцию категоризации, которая организует воркфлоу по категориям сервисов для облегчения их обнаружения и фильтрации.

### 🚀 **Exclusive Beands Workflows** ✨

**Папка `workflows/beands/` содержит эксклюзивные воркфлоу**, созданные специально для beands:

- **9 уникальных решений** для автоматизации бизнес-процессов
- **AI-интеграции** с Google Gemini, Meta Llama, DeepSeek
- **Специализированные решения** для финансов, документов, WordPress
- **Постоянные обновления** - каждый месяц добавляются новые воркфлоу
- **Готовые к использованию** - протестированы и оптимизированы

**Категории эксклюзивных воркфлоу:**
- 🤖 **AI & Analytics** - анализ стартапов, обработка документов
- 💬 **Chat & Support** - AI-чатботы, поддержка клиентов  
- 💰 **Finance** - новости, отчеты, аналитика
- 📧 **Email & Communication** - автоматизация email
- 🌐 **Web & CMS** - WordPress, веб-автоматизация
- 🖼️ **Media & Images** - AI-обработка изображений

[📋 Подробнее о воркфлоу beands →](workflows/beands/README.md)

### Available Categories

Система категоризации включает следующие основные категории:
- **AI Agent Development** - Разработка AI агентов
- **Business Process Automation** - Автоматизация бизнес-процессов
- **Cloud Storage & File Management** - Облачное хранилище и управление файлами
- **Communication & Messaging** - Связь и обмен сообщениями
- **Creative Content & Video Automation** - Автоматизация творческого контента и видео
- **Creative Design Automation** - Автоматизация творческого дизайна
- **CRM & Sales** - CRM и продажи
- **Data Processing & Analysis** - Обработка и анализ данных
- **E-commerce & Retail** - Электронная коммерция и розничная торговля
- **Financial & Accounting** - Финансы и бухгалтерия
- **Marketing & Advertising Automation** - Автоматизация маркетинга и рекламы
- **Project Management** - Управление проектами
- **Technical Infrastructure & DevOps** - Техническая инфраструктура и DevOps
- **Web Scraping & Data Extraction** - Веб-скрапинг и извлечение данных

---

## 🏗 Technical Architecture

### Modern Stack

* **SQLite Database** - FTS5 полнотекстовый поиск с 365+ индексированными интеграциями
* **FastAPI Backend** - RESTful API с автоматической документацией OpenAPI
* **Responsive Frontend** - Современный HTML5 с встроенным CSS/JavaScript
* **Smart Analysis** - Автоматическая категоризация и именование воркфлоу

### Key Features

* **Change Detection** - MD5 хеширование для эффективного переиндексирования
* **Background Processing** - Неблокирующий анализ воркфлоу
* **Compressed Responses** - Gzip middleware для оптимальной скорости
* **Error Handling** - Graceful degradation и комплексное логирование
* **Mobile Optimization** - Дизайн, дружественный к сенсорным экранам

---

## 🔧 Setup & Requirements

### System Requirements

* **Python 3.7+** - Для запуска системы документации
* **Node.js 16+** - Для альтернативного Node.js сервера
* **Modern Browser** - Chrome, Firefox, Safari, Edge
* **50MB Storage** - Для SQLite базы данных и индексов
* **n8n Instance** - Для импорта и запуска воркфлоу

### Installation

```bash
# Клонирование репозитория
git clone https://github.com/beands/awsn8n-collection.git
cd awsn8n-collection

# Установка зависимостей Python
pip install -r requirements.txt

# Или установка зависимостей Node.js
npm install

# Запуск сервера документации
python run.py
# или
npm start

# Доступ по адресу http://localhost:8000
```

---

## 📚 API Documentation

### Core Endpoints

* `GET /` - Основной интерфейс просмотра воркфлоу
* `GET /api/stats` - Статистика базы данных и метрики
* `GET /api/workflows` - Поиск с фильтрами и пагинацией
* `GET /api/workflows/{filename}` - Детальная информация о воркфлоу
* `GET /api/workflows/{filename}/download` - Скачивание JSON воркфлоу
* `GET /api/workflows/{filename}/diagram` - Генерация диаграммы Mermaid

### Advanced Search

* `GET /api/workflows/category/{category}` - Поиск по категории сервиса
* `GET /api/categories` - Список всех доступных категорий
* `GET /api/integrations` - Получение статистики интеграций
* `POST /api/reindex` - Запуск фонового переиндексирования

---

## 🤝 Contributing

### Adding New Workflows

1. **Экспорт воркфлоу** как JSON из n8n
2. **Описательное именование** следуя установленному паттерну
3. **Добавление в папку workflows/** 
4. **Удаление чувствительных данных** (учетные данные, личные URL)
5. **Запуск переиндексирования** для обновления базы данных

### Quality Standards

* ✅ Воркфлоу должен быть функциональным и протестированным
* ✅ Удалить все учетные данные и чувствительные данные
* ✅ Следовать соглашению об именовании для консистентности
* ✅ Проверить совместимость с недавними версиями n8n
* ✅ Включить осмысленное описание или комментарии

---

## ⚠️ Important Notes

### Security & Privacy

* **Проверка перед использованием** - Все воркфлоу предоставляются как есть для образовательных целей
* **Обновление учетных данных** - Заменить API ключи, токены и вебхуки
* **Безопасное тестирование** - Проверить в среде разработки сначала
* **Проверка разрешений** - Убедиться в правильных правах доступа для интеграций

### Compatibility

* **n8n Version** - Совместимо с n8n 1.0+ (большинство воркфлоу)
* **Community Nodes** - Некоторые воркфлоу могут требовать дополнительных установок узлов
* **API Changes** - Внешние сервисы могли обновить свои API с момента создания
* **Dependencies** - Проверить требуемые интеграции перед импортом

---

## 📊 Performance Comparison

| Metric | Old System | New System | Improvement |
|--------|------------|------------|-------------|
| **File Size** | 71MB HTML | <100KB | **700x smaller** |
| **Load Time** | 10+ seconds | <1 second | **10x faster** |
| **Search** | Client-side only | Full-text with FTS5 | **Instant** |
| **Memory Usage** | ~2GB RAM | <50MB RAM | **40x less** |
| **Mobile Support** | Poor | Excellent | **Fully responsive** |

---

## 🏆 Project Achievements

### Repository Transformation

* **2,055+ воркфлоу** профессионально организованы и названы
* **365+ уникальных интеграций** автоматически обнаружены и категоризированы
* **100% осмысленных имен** (улучшено с базовых паттернов имен файлов)
* **Zero data loss** во время интеллектуального процесса переименования
* **Расширенный поиск** с 12+ категориями сервисов

### Performance Revolution

* **Sub-100ms поиск** с SQLite FTS5 полнотекстовым индексированием
* **Мгновенная фильтрация** по 29,445+ узлам воркфлоу
* **Мобильная оптимизация** адаптивный дизайн для всех устройств
* **Статистика в реальном времени** с живыми запросами к базе данных
* **Профессиональный интерфейс** с современными принципами UX

---

## 📞 Contact & Support

- **Website**: [https://beands-media.ru](https://beands-media.ru)
- **Email**: [kruykoff@gmail.com](mailto:kruykoff@gmail.com)
- **GitHub**: [@beands](https://github.com/beands)
- **Repository**: [https://github.com/beands/awsn8n-collection](https://github.com/beands/awsn8n-collection)

---

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

**🎯 Perfect for**: Developers, automation engineers, business analysts, and anyone looking to streamline their workflows with proven n8n automations, especially focused on AWS services and cloud automation.

---

*This repository represents the most comprehensive and well-organized collection of n8n workflows available, featuring cutting-edge search technology and professional documentation that makes workflow discovery and usage a delightful experience.*
