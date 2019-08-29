provider "aws" {
  region  = "${var.aws_region}"
  profile = "${var.aws_profile}"
}

terraform {
  backend "s3" {}
}

///////////////////////
//        iam        //
///////////////////////
module "iam" {
  source = "git::https:/github.com/thanhbn87/terraform-aws-iam-role.git?ref=tags/0.1.1"

  name        = "${var.name}"
  namespace   = "${var.namespace}"
  project_env = "${var.project_env}"
  project_env_short = "${var.project_env_short}"

  temp_file_assumerole       = "${var.temp_file_assumerole}"
  temp_file_policy           = "${var.temp_file_policy}"
  identifiers                = "${var.identifiers}"
  aws_policies               = "${var.aws_policies}"
  service_roles              = "${var.service_roles}"
  aws_service_roles          = "${var.aws_service_roles}"
  inline_policy              = "${var.inline_policy}"
  inline_policy_name         = "${var.inline_policy_name}"

  tags = "${var.tags}" 
}
