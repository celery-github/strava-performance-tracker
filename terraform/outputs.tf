output "repository_html_url" {
  description = "URL of the newly created GitHub repository."
  value       = github_repository.tracker.html_url
}

output "github_pages_url" {
  description = "Published GitHub Pages URL."
  value       = github_repository_pages.tracker.html_url
}
