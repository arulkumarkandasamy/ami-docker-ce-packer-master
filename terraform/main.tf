provider "aws" {}

resource "aws_key_pair" "auth" {
  key_name   = "${var.aws_key_name}"
  public_key = "${file(var.public_key_path)}"
}

data "terraform_remote_state" "test-docker-ce" {
    backend = "s3"
    config {
        bucket = "tf-remote-state-arulkumar"
        key    = "terraform-test-docker-ce.tfstate"
        region = "us-west-1"
    }
}
