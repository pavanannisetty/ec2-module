resource "aws_instance" "ec2" {
  ami                    = var.ami
  instance_type          = var.instance_type
  key_name               = var.key_pair
  subnet_id              = var.subnet
  vpc_security_group_ids = ["${var.security_group}"]

  tags = {
    Name = "${var.environment}-${var.client}-${var.server}.socrates.${var.environment}"
  }
}
