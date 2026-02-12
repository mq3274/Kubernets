output "public_ips" {
  description = "Public IPs of all servers"
  value       = { for k, v in aws_instance.web : k => v.public_ip }
}
