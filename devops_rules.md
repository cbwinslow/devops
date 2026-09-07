# 🔧 DevOps Engineering Ruleset
_A universal, opinionated guideline for building reliable, scalable, and secure DevOps pipelines & environments._
**Owner**: DevOps Lead
**Version**: 1.0.0
**Last Updated**: 2025-06-06

---

## ⚙️ CI/CD Standards

- ✅ All code must pass tests before merge (`test > build > deploy`)
- ✅ Use pull request triggers, not branch triggers in CI
- 🔐 Secrets must **never** be stored in source control — use secret managers
- 📦 Use artifacts caching (e.g., Docker layers, npm/yarn cache, etc.)
- 🧪 Run automated **unit, integration, and smoke tests** on every PR
- 📋 Use tagged semantic versioning on successful deploys (e.g., `v1.2.3`)
- 🚀 Blue/Green or Canary deployment preferred over direct pushes

---

## 🛠️ Infrastructure as Code (IaC)

- ☁️ Use **Terraform, Pulumi, or AWS CDK** — manual infra changes are prohibited
- 🔒 All state files must be encrypted and stored securely (e.g., AWS S3 + KMS)
- ✅ Use modules for repeatable patterns
- 🔍 Every change must go through code review
- 📦 All IaC should be tested via `terraform plan`, `tflint`, `checkov` or equivalent

---

## 🛡️ Security

- 🔐 Enable MFA for all users with infra access
- 🔍 Use automated scanners: Trivy, Snyk, Dependabot
- ❌ Never use default usernames/passwords
- ✅ Rotate secrets/keys at least every 90 days
- 🔒 Apply least privilege principle to IAM, firewall, and role definitions
- 🧱 Use WAF and DDoS protection on all public endpoints

---

## 📊 Observability & Monitoring

- 🔎 Use centralized logging (e.g., ELK, Loki, Datadog)
- 📈 Implement metric monitoring (Prometheus/Grafana/New Relic)
- 🆘 Alert on CPU, memory, disk, error rate, latency, and failed deployments
- 📡 Every service must have a health endpoint (`/healthz`, `/status`)
- 🗺️ Dashboards should be prebuilt for staging & production

---

## 🔁 Automation & Workflow

- 🤖 Auto format code pre-commit using linters/formatters (e.g., Prettier, Black)
- 🧽 Clean up stale branches, unused images, and old secrets regularly
- 🧑‍🏭 Use bots to enforce PR rules, labels, reviews
- 🧵 Enable commit signing and enforce via branch protection rules

---

## 🧪 Testing Rules

- 🧪 90%+ test coverage target for backend
- 🧬 Integration tests must be tagged and separated from unit tests
- 🔀 Tests must be **idempotent** (can run multiple times with same result)
- 🧱 Run load/perf tests monthly in pre-prod (e.g., k6, Artillery)

---

## 🧹 Git Hygiene

- ✍️ All commits must follow [Conventional Commits](https://www.conventionalcommits.org/)
- 🌳 `main`/`master` branch must be protected + require PRs
- 🧼 Avoid force pushing to shared branches
- 🕵️‍♀️ Git hooks (`pre-commit`, `pre-push`) must enforce lint/test passes
- 📦 Merge via squash or rebase to keep history clean

---

## ☣️ Disaster Recovery & Backups

- 🧯 Define and document DR plan for each critical system
- ⏱️ Backups must run nightly and be stored offsite
- 🔄 Verify backups weekly (restore test)
- 🧪 Run chaos engineering drills quarterly (e.g., simulate region outage)

---

## 📜 Documentation

- 📘 Every repo must contain:
  - `README.md`
  - `CONTRIBUTING.md`
  - `docs/architecture.md`
- 🧩 Environment setup instructions must be automated (e.g., via Makefile or setup.sh)
- 🧠 Use ADRs (Architecture Decision Records) for major system decisions

---

## 🧠 Bonus Best Practices

- 📦 All containers must use minimal base images (`distroless`, `alpine`)
- 📡 Every microservice should expose OpenAPI/Swagger spec
- 🧹 Cleanup policies must be automated for logs, metrics, images, backups
- 🔐 Conduct quarterly security reviews / audits
- 💥 No fragile systems—design for failure, retry logic everywhere

---

🛰️ _Follow these rules to keep systems tight, clean, and hacker-proof_ 🥷
