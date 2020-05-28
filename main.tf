provider "aws" {
  region  = "${var.aws_region}"
  profile = "${var.aws_profile}"
}

terraform {
  backend "s3" {}
}

locals {
  name = "${var.customized_name == "" ? var.name : var.customized_name}"
}

///////////////////////
//        iam        //
///////////////////////
module "iam" {
  source = "git::https:/github.com/thanhbn87/terraform-aws-iam-role.git?ref=tags/0.1.5"

  name        = "${local.name}"
  path        = "${var.path}"
  namespace   = "${var.namespace}"
  project_env = "${var.project_env}"
  project_env_short = "${var.project_env_short}"
  customized_name   = "${var.customized_name}"
  description       = "${var.description}"

  temp_file_assumerole       = "${var.temp_file_assumerole}"
  temp_file_policy           = "${var.temp_file_policy}"
  identifiers                = "${var.identifiers}"
  aws_policies               = "${var.aws_policies}"
  service_roles              = "${var.service_roles}"
  aws_service_roles          = "${var.aws_service_roles}"
  inline_policy              = "${var.inline_policy}"
  inline_policy_name         = "${var.inline_policy_name}"
  resources                  = "${var.resources}"

  tags = "${var.tags}" 
}
