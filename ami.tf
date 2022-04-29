resource "aws_ami_from_instance" "ami"
#depends on is used for creation of ami only after installation of instance
  depends_on = [null_resource.app_deploy]
  name               = "${var.COMPONENT}-${var.APP_VERSION}"
  source_instance_id = aws_instance.ami.id
  tags = {
    Name = "${var.COMPONENT}-${var.APP_VERSION}"
  }
}
