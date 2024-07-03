provider "aws" {
  region = "us-west-2"
}

variable "lambda_defaults" {
  type = map(any)
  default = {
    DEFAULT = {
      concurrency = 1
    }
    feeder = {
      concurrency = 2
    }
    router = {
      concurrency = 3
    }
  }
}


variable "lambda_env_defaults" {
  type = map(any)
  default = {
    dev = {
      feeder = {
        concurrency = 3
      }
    }
    prod = {}
  }
}

output "feeder" {
  value = contains(keys(var.lambda_env_defaults[terraform.workspace]), "feeder") ? var.lambda_env_defaults[terraform.workspace]["feeder"].concurrency : contains(keys(var.lambda_defaults), "feeder") ? var.lambda_defaults["feeder"].concurrency : var.lambda_defaults["DEFAULT"].concurrency
}


output "router" {
  value = contains(keys(var.lambda_env_defaults[terraform.workspace]), "router") ? var.lambda_env_defaults[terraform.workspace]["router"].concurrency : contains(keys(var.lambda_defaults), "router") ? var.lambda_defaults["router"].concurrency : var.lambda_defaults["DEFAULT"].concurrency
}
