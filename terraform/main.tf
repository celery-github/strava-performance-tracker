resource "github_repository_pages" "tracker" {
  repository = github_repository.tracker.name

  source {
    branch = "main"
    path   = "/"
  }
}
