#=============================#
# AWS Provider Settings       #
#=============================#
provider "aws" {
  version                 = "> 4.31.0"
  region                  = var.region
  profile                 = var.profile
  shared_credentials_file = "~/.aws/bb/config"
}

#=============================#
# Backend Config (partial)    #
#=============================#
terraform {
  required_version = ">= 1.1.3"
}

#=============================#
# Variables                   #
#=============================#
variable "region" {
  description = "AWS Region"
  default     = "us-east-1"
}

variable "profile" {
  description = "AWS Profile"
  default     = "bb-dev-deploymaster" # ci aws-iam-profile
  #default    = "bb-shared-devops"    # localhost aws-iam-profile
}
