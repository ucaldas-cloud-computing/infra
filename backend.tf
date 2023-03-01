terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "clops-cloud"

    workspaces {
      name = "infra"
    }
  }
}