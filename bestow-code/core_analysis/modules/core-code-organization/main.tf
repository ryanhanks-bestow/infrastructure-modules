resource "github_organization" "organization" {
  name        = var.organization_name
  description = var.organization_description
}
