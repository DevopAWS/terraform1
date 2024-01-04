variable "ami-id" {
  #type    =  string
  default =  "ami-03265a0778a880afb"
}

variable "instance_name" {
  type    =  map
  default =  {
    mongodb = "t3.small"
    mysql = "t3.small"
    shipping = "t3.small"
    cart = "t2.micro"
    user = "t2.micro"
    redis = "t2.micro"
    rabbitmq = "t2.micro"
    web = "t2.micro"
    payment = "t2.micro"
    dispatch = "t2.micro"
    catalogue = "t2.micro"
    }
}

variable "zone_id" {
  #type    =  string
  default =  "Z02572582AYLBU30KSIJ8"
}

variable "ip-name" {
  #type    =  string
  default =  "daws76.online"
}



