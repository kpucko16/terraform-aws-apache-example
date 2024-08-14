Terraform Module to provision an EC2 Instance that is running Apache.

Not intended for production use, just showcasing how to create a custome module on terraform.registry.

'''hcl
terraform {
}

provider "aws" {
  region = "eu-central-1"
  profile = "default"
}

module "apache" {
  source = "./terraform-aws-apache-example"
  vpc_id = "vpc-0902283be7140841f"
  my_ip_with_cidr = "172.31.22.215/32"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQC6dMcVfumL7NECaA1ZOe06lyuLfYJNXPFZh6W5zEbOGrfhJ39+JpzRERbh/v1l0VA+IYNg0wQ/MsJ82k9LfH/qCToZLxclDDwIuSgeVlKhJHnAHEOI6+ZlRPhuPVDJ1zX3CUc5AP7KtF8dg2jf8ulnCvunF/n62xa1+iDMhfBTWx//gamreTRmjoWJ5Itwiwx6oCmp1W0p8Jh/RmleyiRB3/d6HDwe8REFw6aJW8qahI651SlEwqLaEc4owg4pXx/sPtthikMxFmpS55dIXg8tWYm2webtfhD438o0UmH5Nlnng4JmCIIQTcjOwXHG2n7DejGHRCNnkxNKppyAYg0c34uUgUDs+XqC/MfwrxcEim+xbIa8sncv9CnkmCtGhv0SsTyWhk2CmJYbAle2mY5MLQIULmv1cP8IpZRDn0CLAEquu5Q8/AUOSMwpEstlhA+D4QrZrtmOIPUkNozazmS+dIilx+I7UZU2ZXj2hukMEV0HMQLMmpIXDE5HBV5cSl3eaHMOU1nkvmzHkahWyeJmwaqhFsgnmYDeWG8LTHoCCYfwwSJWbHlUw9BA9DFFDat7k+ma0cDYnCBeRc1iDL0rXUFIbO9GEDBVITix7lD+6ZDcTHJCBw0MMnUWbdspo/R2fW0oWhFVQaO6dpPQdiYTLcNb+28QGyl95mxnBIUZZw== christianchrastev@yahoo.com"
  instance_type = "t2.micro"
  server_name = "My-test-server"
}

output "apache_public_ip" {
  value = module.apache.public_ip
}
'''
