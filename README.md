<div align="center">

# BankApp DevSecOps Pipeline

**A fully automated, security-first CI/CD lifecycle for a containerized Banking Application — from commit to cloud, with AI built in.**

<br>

![GitHub Actions](https://img.shields.io/badge/GitHub_Actions-2088FF?style=for-the-badge&logo=github-actions&logoColor=white)
![Docker](https://img.shields.io/badge/Docker-2496ED?style=for-the-badge&logo=docker&logoColor=white)
![AWS EC2](https://img.shields.io/badge/AWS_EC2-FF9900?style=for-the-badge&logo=amazon-aws&logoColor=white)
![Spring Boot](https://img.shields.io/badge/Spring_Boot-6DB33F?style=for-the-badge&logo=spring-boot&logoColor=white)
![OWASP ZAP](https://img.shields.io/badge/OWASP_ZAP-E3371E?style=for-the-badge&logo=owasp&logoColor=white)
![TinyLlama](https://img.shields.io/badge/TinyLlama-7C3AED?style=for-the-badge&logo=ollama&logoColor=white)
![Amazon ECR](https://img.shields.io/badge/Amazon_ECR-FF9900?style=for-the-badge&logo=amazon-aws&logoColor=white)
![Trivy](https://img.shields.io/badge/Trivy-1904DA?style=for-the-badge&logo=aqua&logoColor=white)
![Semgrep](https://img.shields.io/badge/Semgrep-FF6B35?style=for-the-badge&logo=semgrep&logoColor=white)
![Gitleaks](https://img.shields.io/badge/Gitleaks-E3371E?style=for-the-badge&logo=git&logoColor=white)

</div>

---

## ✦ Key Features

| | Feature | Description |
|---|---|---|
| ⚡ | **Full CI/CD Pipeline** | Automated build, test, and deployment using GitHub Actions — triggered on every push to main. |
| 🛡️ | **Security First** | Integrated Secret Scanning (Gitleaks), SAST (Semgrep), Container Scanning (Trivy), and DAST (OWASP ZAP). |
| ☁️ | **Cloud Infrastructure** | Containerized deployment on AWS EC2 with Amazon ECR for versioned image management. |
| 🔐 | **Secrets Management** | Secure handling of DB credentials and API keys via AWS Secrets Manager — zero hardcoded secrets. |
| 🤖 | **Local AI Assistant** | TinyLlama via Ollama runs on-premise for secure, private AI-powered banking queries with no data leakage. |
| 📦 | **Container Orchestration** | Docker Compose manages BankApp + MySQL 8.0 as healthy, networked containers on a single EC2 instance. |

---

## ✦ Pipeline Overview — Automated Security Gates

```
┌─────────────────────┐     ┌─────────────────────┐     ┌─────────────────────┐
│     CI / SECURITY   │────▶│     CI / BUILD       │────▶│     CD / DEPLOY      │
│                     │     │                     │     │                     │
│  ✓ Secret Scan      │     │  ✓ Build & Package  │     │  ✓ Deploy via SSH   │
│  ✓ Lint Check       │     │  ✓ Container Scan   │     │  ✓ DAST Scan        │
│  ✓ SAST Scan        │     │  ✓ Push to ECR      │     │  ✓ Verify Health    │
└─────────────────────┘     └─────────────────────┘     └─────────────────────┘
```

---

## ✦ Project Visuals — See It In Action

### `01` — Automated CI/CD Pipeline
> All stages passing — Secret Scan, Lint, SAST, Container Scan, ECR Push, EC2 Deploy, and OWASP ZAP — in 4 minutes flat.

![GitHub Actions Pipeline](screenshots/GitHub_Actions_Pipeline.png)

---

### `02` — Amazon ECR — Container Registry
> Three versioned Docker images pushed to the private ECR repository, each tagged with a unique commit hash for full traceability.

![Amazon ECR](screenshots/ECR.png)

---

### `03` — Live Application Dashboard
> BankApp running live on AWS EC2 at port 8080 — showing account balance, Deposit, Withdraw, and Transfer functionality.

![BankApp Dashboard](screenshots/Dashboard.png)

---

### `04` — Integrated AI Assistant — TinyLlama
> The on-premise AI Assistant powered by Ollama + TinyLlama answers banking queries in real-time, with zero data leaving the server.

![AI Chatbot](screenshots/AI_chatbot.png)

---

### `05` — Docker Container Status
> Both containers healthy — BankApp pulling the latest ECR image, and MySQL 8.0 running as the database backend on the EC2 instance.

![Docker Container Status](screenshots/Docker_Container_Status.png)

---

## ✦ Tech Stack — Built With

| Category | Technology |
|---|---|
| ☕ Backend | Java / Spring Boot |
| 🐬 Database | MySQL 8.0 |
| 🐳 Containers | Docker & Docker Compose |
| ⚙️ CI/CD | GitHub Actions |
| ☁️ Cloud | AWS EC2 |
| 📦 Registry | Amazon ECR |
| 🔑 Secrets | AWS Secrets Manager |
| 🤖 AI Engine | Ollama (TinyLlama) |
| 🔍 Secret Scan | Gitleaks |
| 🧠 SAST | Semgrep |
| 🔬 Container Sec | Trivy |
| 🕷️ DAST | OWASP ZAP |

---

## ✦ Security Workflow — Every Push Is Verified

**`01` — Secret Scanning — Gitleaks**
Scans every commit for accidentally exposed credentials, API keys, tokens, and connection strings before they ever reach production.

**`02` — Static Application Security Testing — Semgrep**
Performs code-level analysis to detect injection flaws, misconfigurations, and security anti-patterns in the Java source code.

**`03` — Container Image Scanning — Trivy**
Checks the Docker image for known CVEs in base images, OS packages, and application dependencies before pushing to ECR.

**`04` — Dynamic Application Security Testing — OWASP ZAP**
Runs a ZAP Baseline Scan against the live deployed application to discover runtime vulnerabilities, XSS, and injection points.

---

## ✦ Getting Started — Run It Locally

**Prerequisites:** Docker, Docker Compose, Ollama, AWS CLI configured.

```bash
# 1. Clone the repository
git clone https://github.com/your-username/banking-app-devsecops.git
cd banking-app-devsecops
```

```bash
# 2. Pull TinyLlama via Ollama
ollama pull tinyllama
```

```bash
# 3. Start all services
docker-compose up -d

# 4. Verify containers are healthy
docker ps
```

---

<div align="center">

         BankApp DevSecOps Pipeline

`Java` · `Spring Boot` · `Docker` · `GitHub Actions` · `AWS` · `Ollama` · `TinyLlama`

</div>