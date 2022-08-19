variable "sample" {
  default = "Hello world"
}

output "sample-op" {
    value = var.sample
}

# Both the output syntaxes are valid
output "sample-op1" {
    value = "value is ${var.sample}"
}

