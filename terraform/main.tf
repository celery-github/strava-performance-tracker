
resource "github_repository" "tracker" {
  name        = var.repository_name
  description = var.repository_description
  visibility  = "public"

  auto_init              = true
  has_issues             = true
  has_projects           = false
  has_wiki               = false
  delete_branch_on_merge = true

  topics = [
    "terraform",
    "python",
    "strava",
    "data-analytics",
    "github-pages"
  ]
}

resource "github_repository_pages" "tracker" {
  repository = github_repository.tracker.name

  source {
    branch = "main"
    path   = "/"
  }
}
