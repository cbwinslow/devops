# System Architecture

## Services
- Frontend: React
- Backend: Node.js
- CI/CD: GitHub Actions
- Infra: AWS (Terraform)

## Data Flow
1. User hits frontend
2. API gateway routes to backend
3. Backend fetches data from DB
4. Returns to frontend

## Security
- HTTPS enforced
- Auth via OAuth2
- Secrets via AWS Secrets Manager
