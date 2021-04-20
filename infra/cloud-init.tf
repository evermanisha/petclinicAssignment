

data "template_file" "springboot-init" {
  template = file("scripts/springboot-init.sh")
}


data "template_cloudinit_config" "cloudinit-springboot" {
  gzip          = false
  base64_encode = false

  part {
    content_type = "text/x-shellscript"
    content      = data.template_file.springboot-init.rendered
  }
}
