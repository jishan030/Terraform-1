resource "aws_security_group" "this" {
  name        = "practice-sg"
  description = "Practice security group"
  vpc_id      = var.vpc_id

    ingress {
    from_port   = var.port
    to_port     = var.port
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  
  }
}