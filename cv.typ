#import "@preview/toy-cv:0.1.0": *

#let main-color = rgb("#062E5C")
#let accent-color = rgb("#000000")
#let title-color = rgb("#2C5AA0")

#show emph: set text(fill: main-color)

#let left-content = [
  #contact-section(main-color: main-color, i18n: "fr", contact-entries: (
   (
      logo-name: "envelope",
      logo-link: "mailto:leparoux.job@protonmail.com",
      logo-text: "leparoux.job@protonmail.com",
      logo-font: "Font Awesome 7 Free Solid",
    ),
    (
      logo-name: "github",
      logo-link: "https://github.com/aristide-git",
      logo-text: "github.com/aristide-git",
      logo-font: "Font Awesome 7 Brands",
    ),
    (
      logo-name: "globe",
      logo-link: "https://aristide-git.github.io/",
      logo-text: "aristide-git.github.io",
      logo-font: "Font Awesome 7 Free Solid",
    ),
    (
      logo-name: "linkedin",
      logo-link: "https://www.linkedin.com/in/aristide-leparoux/",
      logo-text: "linkedin.com/in/aristide-leparoux",
      logo-font: "Font Awesome 7 Brands",
    ),
    (
      logo-name: "location-dot",
      logo-text: "Sophia Antipolis, France",
      logo-font: "Font Awesome 7 Free Solid",
    ),
    (
      logo-name: "graduation-cap",
      logo-text: "EURECOM ",
      logo-font: "Font Awesome 7 Free Solid",
    ),
    (
      logo-name: "cake-candles",
      logo-text: "21 years old",
      logo-font: "Font Awesome 7 Free Solid",
    ),
  ))
  #v(1fr)
  #left-section(title: "Langues", [
    Français (natif)\
    Anglais (C1)
  ])
  #v(1fr)
  #left-section(title: "Compétences", [
    *Programmation :*
    Python, JavaScript, Django, Flask, React, Node.js, SQL, Pandas, NumPy

    *Data & Orchestration :*
    Apache Airflow, Superset, Data Analysis, Machine Learning, ETL/ELT

    *Backend & Infra :*
    FastAPI, Docker, Kubernetes, Nginx

    *Bases de données :*
    PostgreSQL, MySQL, MongoDB, MariaDB

    *Cloud :*
    AWS, Google Cloud Platform, Azure

    *Contrôle de version :*
    Git, GitHub, GitLab

    *Méthodologies :*
    Agile, Scrum, DevOps

    *Soft skills :*
    Organisation, Ponctualité, Autonomie, Esprit d'équipe
  ])
  #v(1fr)
  #left-section(title: "Centres d’intérêt", [
    Projets personnels, Veille technologique, Sport, Voyage
  ])
]


#show: cv.with(
  title: "Aristide Leparoux",
  subtitle: [
    Étudiant en Data à EURECOM — passionné par l’IA, les pipelines de données
    et la visualisation. Ouvert aux opportunités de projets et de stages.
  ],
  avatar: image("assets/avatar.png"),
  avatar-size: 2.2cm,
  left-content: left-content,
  main-color: main-color,
)


#right-column-subtitle([Expériences professionnelles])
#line(length: 100%, stroke: 1pt + black)

#cv-entry(
  title: [
    #text(fill: title-color)[*Stagiaire Data*, Mobilité Services]
  ],
  date: "2025 — 6 semaines",
  subtitle: [France],
  [
    - Mise en place d’un dashboard Superset pour des données temps réel.
    - Automatisation des flux avec Apache Airflow (ETL, planification, monitoring).
    - Normalisation des schémas SQL et intégration PostgreSQL / MariaDB.
    - Conteneurisation et déploiement (Docker, Nginx).
  ],
)

#v(1fr)

#cv-entry(
  title: [
    #text(fill: title-color)[*Professeur particulier*, Acadomia]
  ],
  date: "2022 — 2023",
  subtitle: [Cours particuliers (maths, physique, informatique)],
  [
    - Accompagnement d’élèves de lycée et prépa sur les notions clés et la méthodologie.
    - Préparation aux contrôles et examens, suivi de progression.
    - Pédagogie adaptée et vulgarisation des concepts scientifiques.
  ],
)

#v(1fr)

#right-column-subtitle([Projets])
#line(length: 100%, stroke: 1pt + black)

#cv-entry(
  title: [
    #text(fill: title-color)[*Dashboard Data Analytics* — Superset & Airflow]
  ],
  date: "2024–2025",
  subtitle: [Projet académique et professionnel],
  [
    - Tableaux de bord interactifs et KPIs temps réel.
    - Pipelines de données automatisés, data quality, alerting.
    - Stack: Python, Pandas, Superset, Airflow, Docker, PostgreSQL.
  ],
)

#v(1fr)

#cv-entry(
  title: [
    #text(fill: title-color)[*Modèle de classification (prévision météo)*]
  ],
  date: "2024",
  subtitle: [Projet personnel],
  [
    - Feature engineering sur données publiques (data.gouv.fr).
    - Évaluation de modèles (Random Forest, NN) et métriques (F1, ROC AUC).
    - Stack: Scikit-learn, TensorFlow, NumPy, Pandas.
  ],
)

#v(1fr)

#cv-entry(
  title: [
    #text(fill: title-color)[*API REST Data*]
  ],
  date: "2024",
  subtitle: [Projet personnel],
  [
    - Conception d’une API sécurisée pour exposer des jeux de données.
    - Documentation OpenAPI, pagination, filtres.
    - Stack: FastAPI, Docker, PostgreSQL.
  ],
)

#v(1fr)

#right-column-subtitle([Formation])
#line(length: 100%, stroke: 1pt + black)

#cv-entry(
  title: [
    #text(fill: title-color)[*Cycle Ingénieur — Spécialisation Data*]
  ],
  date: "2023 — Présent",
  subtitle: [EURECOM, Sophia Antipolis],
  [
    - Science des données, Machine Learning, Big Data, Probabilités & Statistiques.
  ],
)

#v(1fr)

#cv-entry(
  title: [
    #text(fill: title-color)[*Classes préparatoires MP2I / MPI*]
  ],
  date: "2021 — 2023",
  subtitle: [France],
  [
    - Mathématiques, Physique, Informatique. Préparation aux concours.
  ],
)
