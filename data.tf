################################################################################
# Supporting Resources
################################################################################

data "aws_caller_identity" "current" {}

data "aws_region" "current" {}

data "aws_elb_service_account" "current" {}

data "aws_acm_certificate" "ssl_cert" {
  domain   = var.atlantis_host
  statuses = ["ISSUED"]
}