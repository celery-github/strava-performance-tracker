# Strava Performance Tracker

Celeste is creating a portfolio project that turns her Strava activity export into running analytics. Is she improving? Let's investigate.

## Current milestone: repository infrastructure

Terraform provisions a public GitHub repository and enables GitHub Pages. Looking to add a different public website for displaying results. Possibly consider a Tableau Public view, but will investigate later. 

## Prerequisites

- Git
- Terraform >= 1.6
- A GitHub account
- A GitHub Personal Access Token (classic) with the `repo` scope

## 1. Configure credentials

Create a token in GitHub Settings → Developer settings → Personal access tokens → Tokens (classic).

PowerShell:
```powershell
$env:GITHUB_TOKEN = "YOUR_TOKEN"
```

macOS/Linux:
```bash
export GITHUB_TOKEN="YOUR_TOKEN"
```

