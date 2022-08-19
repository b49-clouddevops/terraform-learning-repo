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

# A variable can be accessed by either var.varName or ${var.varName}

variable "number" {
    default = 100 
}

output "number" {
    value = var.number
}

# List variable
variable "example-list" {
    default = [
        "DevOps", 
        100,
        false,
        "Verma"
    ]
}

# Printing a list variable 
output "ex-list" {
    value = "Welcome to ${var.example-list[0]} Training, Trainer name is ${var.example-list[3]}, Training duration is ${var.example-list[1]} hours"
}


variable "example-map" {
    deault = 
}