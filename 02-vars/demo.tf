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

#Printing a list variable 

output "ex-list" {
    value = "Welcome to ${varexample-list}"
}


[a , b , d, c, e, f]
 0  1   2  3  4