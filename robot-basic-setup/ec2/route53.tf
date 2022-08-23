resource "aws_route53_record" "component" {
  zone_id = "Z09626353E72G6GNQ0R5A"
  name    = "www.example.com"
  type    = "A"
  ttl     = 300
  records = [aws_eip.lb.public_ip]
}