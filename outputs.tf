output "public_ip" {
  value = aws_instance.app_server.private_ip
}
