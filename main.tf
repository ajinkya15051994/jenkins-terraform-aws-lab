module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 3.0"

  name = "${var.name}"

  ami                    = "ami-ebd02392"
  instance_type          = "${var.type}"
  key_name               = "user1"

  tags = {
    Environment = "${var.tag}"
  }
}