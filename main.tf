provider "aws" {
  region = "us-east-1"
}

module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 3.0"

  name = "${var.name}"

  ami                    = "ami-04ad2567c9e3d7893"
  instance_type          = "${var.type}"
  key_name               = "user1"

  tags = {
    Environment = "${var.tag}"
  }
}
