
#-------------------------------------------------------------------------
# # Create Staging Servers
#-------------------------------------------------------------------------

resource "aws_instance" "webserver" {
  ami                    = ami-013a129d325529d4d
  instance_type          = t2.micro
  key_name               = Windows
  subnet_id              = subnet-efa85397
  count                  = 1
  vpc_security_group_ids = DevOps-Linux
  user_data              = file("script.sh")
  tags = {
    Name = "Staging-Webserver"
  }
}
