# Strava Performance Tracker

A free-first portfolio project that turns a Strava activity export into running analytics.

## Current milestone: repository infrastructure

Terraform provisions a public GitHub repository and enables GitHub Pages. No AWS resources are created, so this milestone has no cloud infrastructure cost. GitHub account limits and service terms still apply.

## Prerequisites

- Git
- Terraform >= 1.6
- A GitHub account
- A GitHub Personal Access Token (classic) with the `repo` scope

## 1. Configure credentials

Create a token in GitHub Settings → Developer settings → Personal access tokens → Tokens (classic).
Do not paste the token into Terraform files or commit it.

PowerShell:
```powershell
$env:GITHUB_TOKEN = "YOUR_TOKEN"
```

macOS/Linux:
```bash
export GITHUB_TOKEN="YOUR_TOKEN"
```

## 2. Configure Terraform

```bash
cd terraform
cp terraform.tfvars.example terraform.tfvars
```

Edit `terraform.tfvars` and set your GitHub username.

## 3. Create the repository

```bash
terraform init
terraform fmt -check
terraform validate
terraform plan
terraform apply
```

Review the plan before applying. Terraform creates a **public** repository named `strava-performance-tracker` by default and enables GitHub Pages from the `main` branch root.

## 4. Push this project to GitHub

After Terraform creates the remote repository, return to this project root:

```bash
git init
git add .
git commit -m "Initial Strava Performance Tracker scaffold"
git branch -M main
git remote add origin https://github.com/YOUR_GITHUB_USERNAME/strava-performance-tracker.git
git push -u origin main
```

GitHub Pages may take a few minutes to publish. The dashboard will be added in a later milestone; this scaffold does not yet contain a finished dashboard.

## 5. Tear down

To delete the GitHub repository managed by this configuration:

```bash
cd terraform
terraform destroy
```

This is destructive. Back up anything you want to keep first.

## Repository roadmap

1. **Foundation (this milestone):** Terraform-managed GitHub repository and Pages configuration.
2. **Data ingestion:** parse the Strava export locally with Python.
3. **Analytics:** calculate distance, pace, weekly/monthly volume, longest run and consistency.
4. **Dashboard:** publish static charts and summaries through GitHub Pages.
5. **CI/CD:** test Python and Terraform on pull requests; automate data refresh without exposing private activity data.

## Privacy and security

- Keep `terraform.tfvars`, Terraform state, Strava exports, access tokens and personal activity data out of Git.
- Never commit `.tfstate` files or secrets.
- Use anonymized/synthetic sample data in the public repository.
- Strava exports can contain GPS coordinates and other sensitive activity details. Review and sanitize them before processing or publishing.
