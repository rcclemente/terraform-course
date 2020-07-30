variable "github_token" {
  type = string
}

variable "github_organization" {
  type = string
}

variable "github_repo_is_private" {
  type = bool
  default = true
}

resource "random_id" "random" {
  prefix      = "atlantis-"
  byte_length = "8"
}

