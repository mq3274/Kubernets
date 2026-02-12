
resource "aws_security_group" "ec2_sg" {
  name        = "ec2-sg"
  description = "Allow SSH inbound traffic"
  vpc_id      = "vpc-090e2f778d3fbad2c" # apna VPC ID daalo (AWS Console se copy karo)

  ingress {
    description = "SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] # sabke liye open (production me apna IP lagao)
  }
  ingress {
    description = "HTTP"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] # sabke liye open (HTTP traffic allow)
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "EC2-SG"
  }
}