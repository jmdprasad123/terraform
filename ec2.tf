resource "aws_instance" "web2" {
  ami                    = "ami-0651f1bab1a933ae5"
  instance_type          = "t2.micro"
  subnet_id              = aws_subnet.public[0].id
  vpc_security_group_ids = ["${aws_security_group.ssh-allowed.id}"]
  key_name               = "NewProjectDP"
}
