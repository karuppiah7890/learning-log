CI/CD:

- GitHub Actions Workflow for deploying a containerized application on AWS on ECS
  - GitHub Actions Workflow to AWS Authentication - other than using AWS IAM Access Keys (Access Key ID and Secret Access Key). For example, using OIDC provider. OIDC - OpenID Connect. Basically - no long-lived AWS access keys anywhere in the workflow.
    - OIDC authentication for GitHub Actions Workflow to AWS

  - Trivy Vulnerability Scan. For example - pipeline must not deploy if HIGH or CRITICAL CVEs exist in the image.

  - Auto Deploy for non-production. For example - every push to main deploys to staging automatically.
    - Deploy using AWS CLI Commands
    - Deploy using Terraform

  - Production manual approval with timeout — production deploys require manual approval. The approval must time out and auto-cancel (not auto-approve) after 24 hours.
    - Deploy using AWS CLI Commands
    - Deploy using Terraform

  - Stability verification — after production deploy, the pipeline must confirm the service is stable before marking the run successful. A deploy that triggers but doesn't confirm stability is not a successful deploy.
    - For example: If AWS ECS Service is running successfully
