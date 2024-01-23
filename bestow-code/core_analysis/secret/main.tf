
module "core_code_organization" {
  source = "../modules/core-code-organization"

  repository_name        = "core_analysis"
  repository_description = "core_analysis for dart"
  repository_visibility  = "public"
}

#data "github_actions_public_key" "example_public_key" {
#  repository = "example_repository"
#}

resource "github_actions_secret" "onepub_token" {
  repository       = module.core_code_organization.repository_name
  secret_name      = "onepub_token"
  plaintext_value  = var.onepub_token
}

variable "onepub_token" {}

resource "github_actions_secret" "example_secret" {
  repository       = module.core_code_organization.repository_name
  secret_name      = "example_secret_name"
  plaintext_value  = var.some_secret_string
}

variable "some_secret_string" {}
