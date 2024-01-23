resource "github_repository" "core_analysis" {
  name        = var.repository_name
  description = var.repository_description
  visibility  = var.repository_visibility
}
