variable "name" {
  description = "The name to greet"
  type        = string
  default     = "World"
}

output "greeting" {
  value = "Hello ${var.name}!"
}

resource "null_resource" "default" {
  provisioner "local-exec" {
    command = "echo 'Hello ${var.name}!'"
  }
}