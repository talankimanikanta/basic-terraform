resource "aws_instance" "sidico" {
  ami           = "ami-08d4ac5b634553e16"
  instance_type = "t2.micro"
  subnet_id = aws_subnet.pub.id
  security_groups = [aws_security_group.SG.id]
  key_name = "key"


  tags = {
    Name = "example"
  }
}

resource "aws_key_pair" "key" {
  key_name   = "key"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDXj2J6HJnzDWxapmxlAXPQO6U1PNXgXEYBr3q10uxIwGx9L1ZuoWzTs3tHpox60JEHe7p8J0/PP7s78JM/ikNQAGrO5w4pf6oYCWnsbFiVLXV/2m7azCt0gxaWchMfl/34v2sf0k5I/gHxlapcOLB5RA3NJu+lbSav74Ry09NldklPayD98Fa949zjvzxSPPheFLM2mXcWLZZVw7AlynB7sveK2J4GeIK8YD7/pxJ6ATC8QMxP0R4fLI87IVC4b6pc5EaERjFIe6ARvpxpbbmmfpgliiJmM0OPARZgez2qsGjnl11TFjrvKNv9m1UfSbxb5dGh0bY+/i8dsVa4l9RVAEyYTqpgWLujf4/yYHmVnoCUoQZPyUYcc4/aDMWPhpAwRw0dSvDzSsphsFZCRTVuNdZIGWP4/WwhUNrxqszA+BrZdEFGglM5wvTetXtR/IICvjCn8ZAekw7BfRxr8lfnU1GUCi4PIKXM51deeJmHUjxDwCnJ8BqSe6Xf5aCMfH8= zibtek@zibtek-Latitude-3500"
}