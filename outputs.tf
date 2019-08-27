output "iam_instance_profile" {
  description = "The iam_instance_profile name"
  value       = "${module.iam.iam_instance_profile}"
}

output "name" {
  description = "The iam role name"
  value       = "${module.iam.name}"
}
