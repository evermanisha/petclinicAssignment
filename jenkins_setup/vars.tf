variable "AWS_REGION" {
  default = "eu-west-1"
}

variable "ACCESS_KEY" {
  default = "AKIA3KSU5JNTNIV5JFEG"
}

variable "SECRET_KEY" {
  default = "9uWWwbAzrJ2Smkbj1DicK7irkyayy79faCtPkYxi"
}

variable "PATH_TO_PRIVATE_KEY" {
  default = "mykey"
}

variable "PATH_TO_PUBLIC_KEY" {
  default = "mykey.pub"
}

variable "INSTANCE_DEVICE_NAME" {
  default = "/dev/xvdh"
}

variable "JENKINS_VERSION" {
  default = "2.222.3"
}

variable "TERRAFORM_VERSION" {
  default = "0.14.10"
}

variable "APP_INSTANCE_COUNT" {
  default = "0"
}

variable "DUMMY_SSH_PUB_KEY" {
  description = "public ssh key to put in place if there's no public key defined - to avoid errors in jenkins if it doesn't have a public key"
  default     = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCySrVgnlDjgO1O0xNj7KLQ8aFh6y3DMEoqpSgvk8pMaG4hqJmYOGLcYr9SNbRThqnalweFfzDQIbNGK6PQcEWKYfxUwogjsn65OOUHdD91MtqiNg5MW3bFk2wlpXs5T83ASqnafmcSbsU3AWFoTpS+4xFYbRUTQVwos85nkuxpVohIwfkGqyZXyPjVZku1OvXLTxI+AjPqPpFTlzTtGT7swklNTd76QSiQU7o4206/93JZKivedqrZAhgstG5jm8EwDeSbJzkm9W22hKT5Or7viyFasQruqYZ12FlzURVw5IvyqmNxr2ncEgSXFCcIFYOaxuQNbW0SeSg++dn0Cezl root@ubuntu-xenial"
}
