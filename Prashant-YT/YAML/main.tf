
resource "aws_instance" "web" {
  for_each               = var.servers
  ami                    = var.ami_id
  instance_type          = var.instance_type
  key_name               = var.key_name
  vpc_security_group_ids = [aws_security_group.ec2_sg.id]

  tags = {
    Name = each.value.name
  }
}
