output "ssh_host" {
  value = "${module.ssh.ssh_host}"
}

output "deployment_bucket" {
  value = "${module.s3.deployment_bucket}"
}

output "deployment_bucket_id" {
  value = "${module.s3.deployment_bucket_id}"
}

output "vpc_id" {
  value = "${module.vpc.id}"
}

output "vpc_subnets" {
  value = "${module.vpc.subnets}"
}
