variable "my_ip_with_cidr" {
    type = string
    description = "Provide your IP eg. 213"
    default = "18.153.33.23/32"
}

variable "public_key" {
  type = string
  default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQC6dMcVfumL7NECaA1ZOe06lyuLfYJNXPFZh6W5zEbOGrfhJ39+JpzRERbh/v1l0VA+IYNg0wQ/MsJ82k9LfH/qCToZLxclDDwIuSgeVlKhJHnAHEOI6+ZlRPhuPVDJ1zX3CUc5AP7KtF8dg2jf8ulnCvunF/n62xa1+iDMhfBTWx//gamreTRmjoWJ5Itwiwx6oCmp1W0p8Jh/RmleyiRB3/d6HDwe8REFw6aJW8qahI651SlEwqLaEc4owg4pXx/sPtthikMxFmpS55dIXg8tWYm2webtfhD438o0UmH5Nlnng4JmCIIQTcjOwXHG2n7DejGHRCNnkxNKppyAYg0c34uUgUDs+XqC/MfwrxcEim+xbIa8sncv9CnkmCtGhv0SsTyWhk2CmJYbAle2mY5MLQIULmv1cP8IpZRDn0CLAEquu5Q8/AUOSMwpEstlhA+D4QrZrtmOIPUkNozazmS+dIilx+I7UZU2ZXj2hukMEV0HMQLMmpIXDE5HBV5cSl3eaHMOU1nkvmzHkahWyeJmwaqhFsgnmYDeWG8LTHoCCYfwwSJWbHlUw9BA9DFFDat7k+ma0cDYnCBeRc1iDL0rXUFIbO9GEDBVITix7lD+6ZDcTHJCBw0MMnUWbdspo/R2fW0oWhFVQaO6dpPQdiYTLcNb+28QGyl95mxnBIUZZw== christianchrastev@yahoo.com"
}

variable "instance_type" {
    type = string
    description = "Please input the instance type you would like to deply." 
    sensitive = true
    default = "t2.micro"
}

variable "server_name" {
  type = string
  description = "Please input the name of your server"
  default = "My-test-server"
}

variable "vpc_id" {
  type = string
  default = "vpc-0902283be7140841f"
}
