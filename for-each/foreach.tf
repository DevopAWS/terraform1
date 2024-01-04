resource "aws_instance" "web" {
  # #count = 11
  # count = length(var.instance_name)
  for_each = var.instance_name
  ami           = var.ami-id
  instance_type = each.value
  
  tags = {
    Name = each.key
  }
  }

#route 53 records
  resource "aws_route53_record" "www" {
  # #count = 11
  # count = length(var.instance_name)
  for_each = aws_instance.web
  zone_id = var.zone_id
  name    = "${each.key}.${var.ip-name}"
  type    = "A"
  ttl     = 1
  records = [each.key == "web" ? each.value.public_ip : each.value.private_ip]
}

# output "instances-info" {
#   value = aws_instance.web
  
# }

