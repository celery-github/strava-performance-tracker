variable "github_owner" {
  description = "GitHub username or organization that will own the repository."
  type        = string
}

variable "repository_name" {
  description = "Name of the GitHub repository to create."
  type        = string
  default     = "strava-performance-tracker"
}

variable "repository_description" {
  description = "Short description displayed on GitHub."
  type        = string
  default     = "A free-first Strava running analytics project built with Python and Terraform."
}
