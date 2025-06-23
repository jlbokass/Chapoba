# 🌐 Chapoba – Environments Architecture

## 🔀 Branches Git

| Branch | Description | Target Environment |
|--------|-------------|--------------------|
| `main` | Stable production-ready code | Production |
| `dev`  | Ongoing development and testing | Pre-production |

---

## 📡 Domains and Folders Mapping

| Domain                | Git Branch | FTP Path                      | Access         |
|-----------------------|------------|-------------------------------|----------------|
| `chapoba.org`         | `main`     | `/home/chapoba/public_html/prod/`     | Public          |
| `preprod.chapoba.org` | `dev`      | `/home/chapoba/public_html/preprod/`  | Protected (htpasswd or IP) |

---

## 🚀 Deployment Workflow

1. **Develop features on `dev`**
2. **Push to GitHub → auto/manual deploy to `/preprod`**
3. **Test on `preprod.chapoba.org`**
4. **Once validated, merge `dev` into `main`**
5. **Deploy `main` to `/prod` (chapoba.org)**

---

## 🛡️ Pre-production Protection

Preprod environment must **not be indexed** or accessible by public:
- `.htaccess` + `.htpasswd` for HTTP authentication
- or IP restriction (if needed)

---

## 🧰 Tools & Services

- **GitHub**: Source code & CI/CD
- **O2Switch (cPanel)**: Hosting and subdomain configuration
- **GitHub CLI or Actions**: Optional for automated deployment

---

## 📌 Notes

- Keep `.env` files separated for each environment (e.g., `.env.prod`, `.env.dev`)
- Be careful with credentials and production secrets
- Use HTTPS in both environments

