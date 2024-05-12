# resource "aws_instance" "webserver" {
#   ami                    = var.ami_id
#   availability_zone      = var.az
#   instance_type          = var.itype
#   key_name               = var.key
#   vpc_security_group_ids = ["sg-04ffe10e6a46e3d34", aws_security_group.sg1.id]
#   depends_on             = [aws_security_group.sg1]

#   tags = {
#     Name = "webserver1"
#     iac  = "terraform"
#   }
# }

# resource "aws_ec2_instance_state" "webserver" {
#   instance_id = "${aws_instance.webserver.id}"
#   state       = "stopped"
#   depends_on  = [aws_instance.webserver]
# }

# resource "aws_security_group" "sg1" {
#   name        = "HTTPS"
#   description = "Allow HTTPS"
#   vpc_id      = "vpc-03037c342ae504b56"

#   ingress {
#     from_port   = "443"
#     to_port     = "443"
#     protocol    = "tcp"
#     cidr_blocks = ["0.0.0.0/0"]
#     description = "Allow Inbound HTTPS"
#   }
#   egress {
#     from_port   = "0"
#     to_port     = "0"
#     protocol    = "-1"
#     cidr_blocks = ["0.0.0.0/0"]
#     description = "Allow Outbound all"
#   }
# }