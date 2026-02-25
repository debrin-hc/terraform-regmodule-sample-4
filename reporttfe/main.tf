terraform {
  required_version = ">= 1.0.0"
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "~> 3.6"
    }
  }
}

# ------------------------------------------------------------------------------
# VARIABLES
# ------------------------------------------------------------------------------
variable "pet_name_length" {
  description = "The number of words in the generated random pet name."
  type        = number
  default     = 2
}

variable "pet_name_separator" {
  description = "The character used to separate words in the random pet name."
  type        = string
  default     = "-"
}

# ------------------------------------------------------------------------------
# RESOURCES
# ------------------------------------------------------------------------------
# Generates a random, human-readable name (e.g., "rapid-alpaca")
resource "random_pet" "dummy_server_name" {
  length    = var.pet_name_length
  separator = var.pet_name_separator
}

# Generates a random 16-character string (e.g., for a dummy password or token)
resource "random_string" "dummy_token" {
  length  = 16
  special = true
}
