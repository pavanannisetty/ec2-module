resource "aws_instance" "ec2" {
  ami           = "${var.ami}"
  instance_type = "${var.instance_type}"
  key_name  = "${var.key_pair}"
  subnet_id = "${var.subnet}"
  vpc_security_group_ids = ["${aws_security_group.ec2-sg.id}"]

  tags = {
    Name = "${var.environment}-${var.client}-${var.server}.socrates.${var.environment}"
  }
}
