# 🧠 Git & GitHub Workflow – Chapoba Project

This document outlines the professional Git/GitHub best practices for the **Chapoba** project, managed in **Agile SCRUM** with Trello.

---

## 🧭 Branch Strategy

| Type        | Branch name                     | Description                                      |
|-------------|----------------------------------|--------------------------------------------------|
| Main        | `main`                           | Stable, always deployable version               |
| Feature     | `feature/CHP-XX-description`     | Feature related to a Trello User Story          |
| Bugfix      | `bugfix/CHP-XX-description`      | Fix for a bug                                   |
| Hotfix      | `hotfix/CHP-XX-urgent-fix`       | Urgent fix on `main`                            |
| Release     | `release/vX.Y.Z`                 | Delivery preparation                            |

---

## 🔁 Commit Conventions

Format:
```
<type>(CHP-XX): short message in present tense
```

Examples:
- `feat(CHP-03): add login page`
- `fix(CHP-08): correct payment bug`
- `docs: update README`

Types:
- `feat`, `fix`, `docs`, `refactor`, `chore`, `test`, `style`

---

## 🛠️ Recommended Workflow

1. `git checkout main` → `git pull`
2. `git checkout -b feature/CHP-XX-description`
3. Develop and commit regularly
4. `git push -u origin feature/...`
5. Open a Pull Request

---

## 🔍 Pull Requests

- Clear title (e.g. `Add login page (CHP-03)`)
- Description linked to the Trello User Story
- Include Definition of Done checklist
- Add relevant labels (`feature`, `bug`, etc.)

---

## 🧪 Linting, Hooks & CI/CD

- Use `husky` + `lint-staged` to validate commits
- Set up GitHub Actions for linting, testing, and building

---

## 📦 Versioning

Use semantic tags like `v1.0.0`, `v1.1.0`, etc.
```bash
git tag -a v1.0.0 -m "Initial release"
git push origin v1.0.0
```

---

## 🔒 Security

- Never commit sensitive files (`.env`)
- Use a `example.env` template instead
- Enable secret scanning on GitHub

---

## 📚 Resources

- `README.md` for project overview
- `CONTRIBUTING.md` for collaboration rules
- Trello board for SCRUM tracking

---

Last updated: June 2025