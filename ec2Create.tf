
resource "aws_instance" "firstServer" {
  ami           = "ami-0453ec754f44f9a4a"
  instance_type = "t2.micro"
}
output "ec2_instance" {
  value = aws_instance.firstServer.public_ip
}


