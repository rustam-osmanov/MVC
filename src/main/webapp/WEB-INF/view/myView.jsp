<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, viewport-fit=cover">
    <title>Рустам Османов · Разработчик с 2013 года</title>
    <!-- Google Fonts + Font Awesome -->
    <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,300;14..32,400;14..32,600;14..32,700;14..32,800&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Inter', sans-serif;
            background: #0d1117;
            color: #c9d1d9;
            line-height: 1.5;
            scroll-behavior: smooth;
        }

        /* glass-morphism + modern UI */
        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 2rem 1.5rem;
        }

        /* header / hero */
        .hero {
            display: flex;
            flex-wrap: wrap;
            gap: 2rem;
            align-items: center;
            justify-content: space-between;
            margin-bottom: 3rem;
            background: linear-gradient(145deg, #161b22 0%, #0d1117 100%);
            border-radius: 2rem;
            padding: 2rem;
            border: 1px solid #30363d;
            box-shadow: 0 20px 35px -12px rgba(0,0,0,0.4);
        }

        .profile-info {
            flex: 2;
        }

        .avatar-wrapper {
            flex: 0 0 auto;
            text-align: center;
        }

        .avatar {
            width: 150px;
            height: 150px;
            background: linear-gradient(135deg, #238636, #2ea043);
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            box-shadow: 0 10px 25px -5px rgba(0,0,0,0.5);
            border: 3px solid #3fb950;
        }

        .avatar i {
            font-size: 5rem;
            color: white;
            filter: drop-shadow(0 2px 5px rgba(0,0,0,0.3));
        }

        h1 {
            font-size: 2.8rem;
            font-weight: 800;
            background: linear-gradient(to right, #ffffff, #9cd9ff);
            -webkit-background-clip: text;
            background-clip: text;
            color: transparent;
            letter-spacing: -0.02em;
            margin-bottom: 0.5rem;
        }

        .badge {
            background: #21262d;
            padding: 0.3rem 0.9rem;
            border-radius: 40px;
            font-size: 0.85rem;
            font-weight: 500;
            display: inline-flex;
            align-items: center;
            gap: 8px;
            color: #8b949e;
            border: 1px solid #30363d;
        }

        .bio {
            font-size: 1.1rem;
            margin: 1rem 0 1.2rem 0;
            color: #e6edf3;
            border-left: 3px solid #3fb950;
            padding-left: 1rem;
        }

        .contact-links {
            display: flex;
            flex-wrap: wrap;
            gap: 1rem;
            margin-top: 1rem;
        }

        .contact-links a {
            display: inline-flex;
            align-items: center;
            gap: 8px;
            background: #21262d;
            padding: 0.5rem 1rem;
            border-radius: 2rem;
            text-decoration: none;
            color: #c9d1d9;
            font-size: 0.9rem;
            transition: 0.2s;
            border: 1px solid #30363d;
        }

        .contact-links a:hover {
            background: #2d333b;
            border-color: #3fb950;
            color: white;
            transform: translateY(-2px);
        }

        /* card grid */
        .section-title {
            font-size: 1.8rem;
            font-weight: 700;
            margin: 2.5rem 0 1.2rem 0;
            display: flex;
            align-items: center;
            gap: 12px;
            border-bottom: 2px solid #21262d;
            padding-bottom: 0.5rem;
        }

        .section-title i {
            color: #3fb950;
            font-size: 1.5rem;
        }

        .repo-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(320px, 1fr));
            gap: 1.5rem;
            margin-top: 1rem;
        }

        .repo-card {
            background: #161b22;
            border-radius: 1.2rem;
            padding: 1.3rem;
            border: 1px solid #30363d;
            transition: transform 0.2s, box-shadow 0.2s;
        }

        .repo-card:hover {
            transform: translateY(-4px);
            border-color: #3fb950;
            box-shadow: 0 12px 24px -12px rgba(63,185,80,0.2);
        }

        .repo-name {
            font-size: 1.3rem;
            font-weight: 700;
            margin-bottom: 0.5rem;
        }

        .repo-name a {
            color: #58a6ff;
            text-decoration: none;
        }

        .repo-name a:hover {
            text-decoration: underline;
        }

        .repo-desc {
            font-size: 0.9rem;
            color: #8b949e;
            margin: 0.5rem 0;
            display: -webkit-box;
            -webkit-line-clamp: 2;
            -webkit-box-orient: vertical;
            overflow: hidden;
        }

        .repo-meta {
            display: flex;
            gap: 1rem;
            margin-top: 1rem;
            font-size: 0.8rem;
            color: #8b949e;
            align-items: center;
        }

        .lang-color {
            width: 12px;
            height: 12px;
            border-radius: 50%;
            display: inline-block;
            margin-right: 5px;
        }

        /* tech stack chips */
        .tech-stack {
            display: flex;
            flex-wrap: wrap;
            gap: 0.7rem;
            margin: 1.5rem 0;
        }

        .tech-chip {
            background: #21262d;
            padding: 0.5rem 1.2rem;
            border-radius: 40px;
            font-weight: 500;
            font-size: 0.85rem;
            backdrop-filter: blur(4px);
            border: 1px solid #30363d;
            transition: 0.1s;
        }

        .tech-chip i {
            margin-right: 6px;
            font-size: 0.9rem;
        }

        /* contribution / stats */
        .stats-row {
            display: flex;
            flex-wrap: wrap;
            gap: 1.5rem;
            justify-content: space-between;
            margin: 2rem 0;
        }

        .stat-card {
            background: #161b22;
            flex: 1;
            min-width: 160px;
            padding: 1.5rem 1rem;
            text-align: center;
            border-radius: 1.5rem;
            border: 1px solid #30363d;
        }

        .stat-number {
            font-size: 2.2rem;
            font-weight: 800;
            color: #3fb950;
        }

        .github-cal {
            background: #161b22;
            border-radius: 1.5rem;
            padding: 1.3rem;
            margin-top: 1rem;
            border: 1px solid #30363d;
            text-align: center;
        }

        .footer {
            margin-top: 4rem;
            text-align: center;
            padding: 2rem 0;
            border-top: 1px solid #21262d;
            font-size: 0.85rem;
            color: #6e7681;
        }

        @media (max-width: 680px) {
            .hero {
                flex-direction: column;
                text-align: center;
            }
            .contact-links {
                justify-content: center;
            }
            h1 {
                font-size: 2rem;
            }
            .avatar {
                width: 120px;
                height: 120px;
            }
            .avatar i {
                font-size: 3.8rem;
            }
        }
    </style>
</head>
<body>

<div class="container">
    <!-- HERO Section -->
    <div class="hero">
        <div class="profile-info">
            <div style="display: flex; flex-wrap: wrap; align-items: center; gap: 12px; margin-bottom: 12px;">
                <h1>Рустам Османов</h1>
                <span class="badge"><i class="fab fa-github"></i> rustam-osmanov</span>
                <span class="badge"><i class="fas fa-map-marker-alt"></i> Москва, Россия</span>
            </div>
            <div class="bio">
                <i class="fas fa-terminal" style="color:#3fb950; margin-right: 8px;"></i>
                Разработчик с 2013 года. Backend / Java / PHP / Python.
            </div>
            <div class="contact-links">
                <a href="https://github.com/rustam-osmanov" target="_blank"><i class="fab fa-github"></i> GitHub</a>
                <a href="#" id="emailLink"><i class="far fa-envelope"></i> rustam@example.com</a>
                <a href="#" id="telegramLink"><i class="fab fa-telegram"></i> Telegram</a>
            </div>
        </div>
        <div class="avatar-wrapper">
            <div class="avatar">
                <i class="fas fa-code"></i>
            </div>
        </div>
    </div>

    <!-- Стек технологий (из GitHub) -->
    <div class="section-title">
        <i class="fas fa-cubes"></i>
        <span>Мой стек технологий</span>
    </div>
    <div class="tech-stack">
        <span class="tech-chip"><i class="fab fa-java"></i> Java / Spring</span>
        <span class="tech-chip"><i class="fab fa-python"></i> Python</span>
        <span class="tech-chip"><i class="fab fa-php"></i> PHP</span>
        <span class="tech-chip"><i class="fas fa-database"></i> Hibernate</span>
        <span class="tech-chip"><i class="fas fa-brain"></i> AI / ML</span>
        <span class="tech-chip"><i class="fas fa-music"></i> MIDI / Музыка</span>
        <span class="tech-chip"><i class="fab fa-html5"></i> HTML/CSS/JS</span>
    </div>

    <!-- Избранные проекты -->
    <div class="section-title">
        <i class="fas fa-code-branch"></i>
        <span>Избранные проекты</span>
    </div>
    <div class="repo-grid" id="reposContainer">
        <!-- динамически заполняется через JS -->
    </div>

    <!-- Статистика и вклад -->
    <div class="section-title">
        <i class="fas fa-chart-line"></i>
        <span>Активность на GitHub</span>
    </div>
    <div class="stats-row">
        <div class="stat-card">
            <div class="stat-number" id="repoCount">—</div>
            <div>репозиториев</div>
        </div>
        <div class="stat-card">
            <div class="stat-number">32</div>
            <div>контрибуции (2025-2026)</div>
        </div>
        <div class="stat-card">
            <div class="stat-number">2013</div>
            <div>опыт с</div>
        </div>
    </div>

    <div class="github-cal">
        <i class="fab fa-github" style="margin-right: 8px; color:#3fb950;"></i>
        Последние 32 контрибуции за год · Активно развиваю проекты на Java, Python и PHP
        <div style="display: flex; justify-content: center; gap: 1rem; margin-top: 1rem; flex-wrap: wrap; font-size: 0.8rem;">
            <span><span style="background:#0e4429; width:12px; height:12px; display: inline-block; border-radius: 2px;"></span>  Низкая</span>
            <span><span style="background:#006d32; width:12px; height:12px; display: inline-block; border-radius: 2px;"></span>  Средняя</span>
            <span><span style="background:#26a641; width:12px; height:12px; display: inline-block; border-radius: 2px;"></span>  Высокая</span>
        </div>
    </div>

    <footer class="footer">
        <i class="fab fa-github-alt"></i> rustam-osmanov · открыт к сотрудничеству · 2026
    </footer>
</div>

<script>
    // === РЕАЛЬНЫЕ РЕПОЗИТОРИИ ИЗ GITHUB ПРОФИЛЯ ===
    const repositories = [
        {
            name: "kover.ru",
            description: "PHP-проект, связанный с покрытием и тестированием",
            url: "https://github.com/rustam-osmanov/kover.ru",
            language: "PHP"
        },
        {
            name: "test",
            description: "Тестовый репозиторий (HTML / эксперименты)",
            url: "https://github.com/rustam-osmanov/test",
            language: "HTML"
        },
        {
            name: "pythonProject",
            description: "Python проекты и автоматизация",
            url: "https://github.com/rustam-osmanov/pythonProject",
            language: "Python"
        },
        {
            name: "Hakaton",
            description: "Хакатон решения и прототипы",
            url: "https://github.com/rustam-osmanov/Hakaton",
            language: "JavaScript"
        },
        {
            name: "MusicTest1",
            description: "MIDI музыка и Java-эксперименты",
            url: "https://github.com/rustam-osmanov/MusicTest1",
            language: "Java"
        },
        {
            name: "Spring",
            description: "Приложения на Spring Framework (Java)",
            url: "https://github.com/rustam-osmanov/Spring",
            language: "Java"
        },
        {
            name: "Hibernate",
            description: "Работа с ORM Hibernate, JPA",
            url: "https://github.com/rustam-osmanov/Hibernate",
            language: "Java"
        },
        {
            name: "AI",
            description: "Эксперименты с ML / нейросетями",
            url: "https://github.com/rustam-osmanov/AI",
            language: "Python"
        }
    ];

    const langColors = {
        "PHP": "#4F5D95",
        "HTML": "#e34c26",
        "Python": "#3572A5",
        "JavaScript": "#f1e05a",
        "Java": "#b07219",
        "default": "#8b949e"
    };

    const reposContainer = document.getElementById("reposContainer");
    if (reposContainer) {
        repositories.forEach(repo => {
            const color = langColors[repo.language] || langColors.default;
            const card = document.createElement("div");
            card.className = "repo-card";
            card.innerHTML = `
                <div class="repo-name">
                    <a href="${repo.url}" target="_blank">${repo.name}</a>
                </div>
                <div class="repo-desc">${repo.description || "Активный проект в разработке"}</div>
                <div class="repo-meta">
                    <span><span class="lang-color" style="background: ${color};"></span> ${repo.language || "—"}</span>
                    <span><i class="far fa-star"></i>  ·  публичный</span>
                </div>
            `;
            reposContainer.appendChild(card);
        });
    }

    // отображение количества репозиториев
    const repoCountSpan = document.getElementById("repoCount");
    if (repoCountSpan) {
        repoCountSpan.innerText = repositories.length;
    }

    // Социальные ссылки (пример — замените на реальные контакты)
    const emailLink = document.getElementById("emailLink");
    if (emailLink) {
        emailLink.href = "mailto:rustam.osmanov@example.com";
        emailLink.addEventListener("click", (e) => {
            e.preventDefault();
            window.location.href = "mailto:rustam.osmanov@example.com?subject=Контакты%20с%20профиля%20GitHub";
        });
    }
    const tgLink = document.getElementById("telegramLink");
    if (tgLink) {
        tgLink.href = "https://t.me/rustam_osmanov";
        tgLink.addEventListener("click", (e) => {
            e.preventDefault();
            window.open("https://t.me/rustam_osmanov", "_blank");
        });
    }
</script>
</body>
</html>