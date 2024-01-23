terraform {
  required_providers {
    github = {
      source = "integrations/github"
      version = "~> 5.0"
    }
  }
}

import {
  to = github_repository.core_analysis
  id = "core_analysis"
}


module "core_code_organization" {
  source = "../../modules/core-code-organization"

  repository_name        = "core_analysis"
  repository_description = "core_analysis for dart"
  repository_visibility  = "public"
}

resource "github_repository" "core_analysis" {
  name        = "core_analysis"
  description = "core_analysis for dart"
  visibility  = "public"
}
