#
# Variables
#
variable "namespace" { default = "" }
variable "name" { default = "role" }
variable "project_env" { default = "Production" }
variable "project_env_short" { default = "prd" }

variable "aws_region" { default = "us-east-1" }
variable "aws_profile" { default = "default" }
variable "temp_file_assumerole" { default = "" }
variable "temp_file_policy" { default = "" }
variable "identifiers" { default = ["ec2.amazonaws.com"] }
variable "aws_policies" { default = [] }
variable "service_roles" { default = [] }
variable "aws_service_roles" { default = [] }
variable "inline_policy" { default = true }
variable "inline_policy_name" { default = "" }

variable tags {
  default = {}
}
