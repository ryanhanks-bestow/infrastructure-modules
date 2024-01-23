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

resource "github_repository" "core_analysis" {
  name        = "core_analysis"
  description = "core_analysis for dart"
  visibility = "public"
}
