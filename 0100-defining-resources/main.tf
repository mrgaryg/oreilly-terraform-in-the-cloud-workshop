provider "aws" {
  access_key = ""
  secret_key = ""
  region     = "us-east-1"
  # HowTo assume IAM role https://registry.terraform.io/providers/hashicorp/aws/latest/docs#assuming-an-iam-role
  profile = "default"
}

# TODO
# Define an EC2 instance (aws_instance) with the following constraints:
# Resource identifier - exercise_0010
#
# ami = ami-07ebfd5b3428b6f4d
# instance type = t2.micro
#
# Be sure to tag it with:
# - "Name" to "exercise_0010"
# - "Terraform" to true


resource "aws_instance" "exercise_0000" {
  ami           = "ami-07ebfd5b3428b6f4d"
  instance_type = "t2.micro"

  tags = {
    Name      = "exercise_0010"
    Terraform = true
    OReilyLab = "terraform_in_cloud"
  }
}
