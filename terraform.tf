module "vpc" {
  source = "./vpc"

  namespace = "bog-chapter11"
}

module "s3" {
  source = "./s3"

  application_name = "chapter11"
}

module "nats" {
  source = "./nats"

  application_name        = "nats"
  application_description = "Nats.io server"
  application_environment = "dev"

  deployment_bucket    = "${module.s3.deployment_bucket}"
  deployment_bucket_id = "${module.s3.deployment_bucket_id}"

  application_version = "1.1"
  docker_image        = "nats"
  docker_tag          = "latest"

  elb_scheme   = "internal"
  health_check = "/health"

  vpc_id  = "${module.vpc.id}"
  subnets = ["${module.vpc.subnets}"]
}
