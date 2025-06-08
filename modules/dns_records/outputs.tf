output "www_record_name" {
  value = aws_route53_record.www.name
}

output "root_record_name" {
  value = aws_route53_record.root.name
}
