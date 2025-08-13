# Terraform GitOps Repository

> [!WARNING]
> This is an example / sandbox repository. It should not be used in production without a full understanding of its functionality. This has been built as a reference example and not as an actual implementation.


This repository manages infrastructure using Terraform and leverages GitHub Actions for CI/CD to deploy to different environments.

## Project Structure

*   `.github/workflows/`: Contains GitHub Actions workflows for continuous integration and deployment.
    *   `main.yml`: Main workflow, likely for PR checks or other general tasks.
    *   `pr-checks.yml`: Workflow for running checks on pull requests.
    *   `acceptance-deploy.yml`: Deploys to the acceptance environment.
    *   `production-deploy.yml`: Deploys to the production environment.
*   `environments/`: Contains the Terraform configurations for each environment.
    *   `acceptance/`: Acceptance environment configuration.
    *   `production/`: Production environment configuration.
*   `modules/`: Contains reusable Terraform modules.
    *   `hello/`: A sample Terraform module.

## Prerequisites

*   Terraform
*   Git

## Usage

This project is designed to be used with GitHub Actions. Changes to the Terraform files in the `environments` directory will trigger deployments to the corresponding environments.

### Local Development

To work with the Terraform configurations locally, you can navigate to the desired environment directory and run the standard Terraform commands:

```bash
cd environments/acceptance
terraform init
terraform plan
terraform apply
```

## CI/CD

The CI/CD pipelines are defined in the `.github/workflows` directory.

*   **Pull Request Checks:** The `pr-checks.yml` workflow runs on every pull request to validate the Terraform code.
*   **Deployments:** The `acceptance-deploy.yml` and `production-deploy.yml` workflows handle deployments to the acceptance and production environments, respectively. These are likely triggered by merges to specific branches.
