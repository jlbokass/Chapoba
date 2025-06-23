# Chapoba Project

**Chapoba** is a web application designed for a dance association. It enables users to explore the association, register and pay online, access class schedules, view photo albums, and watch member-only video lessons. The platform also includes event management and a private member space.

---

## 📚 Project Documentation

- [Git Workflow](./docs/Git_Workflow.md)
- [Contributing Guide](./CONTRIBUTING.md)


## 🧩 Project Structure

This monorepo includes both the frontend (Vite) and the backend (Symfony) projects.

```
chapoba/
├── frontend/     # Vite + Vue.js application
├── backend/      # Symfony API (PHP 8.3+)
├── docker/       # Docker and docker-compose configurations
├── docs/         # Project documentation
├── .gitignore    # Ignore rules for Git
└── README.md     # Project overview and instructions
```

---

## 🚀 Technologies

| Layer     | Stack                                              |
|-----------|----------------------------------------------------|
| Frontend  | Vite, Vue.js, JavaScript (or TypeScript), Tailwind CSS |
| Backend   | PHP 8.3+, Symfony 7 (API Platform optional)        |
| CI/CD     | GitHub Actions (planned)                           |
| Linting   | ESLint, Prettier, PHP-CS-Fixer                     |
| Tools     | Git, GitHub CLI, Docker                            |

---

## 🛠️ Setup Instructions

### Prerequisites

- Node.js (>= 18.x)
- PHP (>= 8.3)
- Composer
- Git + GitHub CLI (`gh`)
- Docker (optional for local stack)

### Initialize the project

Run the setup script:

```bash
./init-chapoba.sh
```

This will create the full folder structure and push the project to GitHub.

---

## 🔍 Features (Planned)

- [ ] Association presentation (homepage)
- [ ] Member registration with Stripe payment
- [ ] Schedule viewer (responsive)
- [ ] Media gallery (Google Photos integration)
- [ ] Member-only video library
- [ ] Event system (public and private)
- [ ] Mobile-ready frontend
- [ ] CI/CD, linters and Git hooks

---

## 👨‍💻 Development Guidelines

### Frontend (`frontend/`)

- Built with Vite + Vue
- Components should be modular and reusable
- Follow Prettier/ESLint formatting

### Backend (`backend/`)

- Symfony should be used in API-only mode
- Use `bin/console` to run Symfony commands
- Follow PSR-12 and Symfony best practices

---

## 📄 License

This project is licensed under the MIT License. See `LICENSE` file for details.
