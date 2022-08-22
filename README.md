# terraform-learning-repo

This repo contains all the basics of terraform.


# terraform  init  
```
Initialises the code and downloads the required plugins!!!!
```


# terraform plan 
```
Shows you the plan that it's going to do when you apply. Based on the plan, you need to decide whether it's intended plan or not
```

# terraform apply 
# terraform apply -auto-approve

```
 Terraform apply, applies the plan ; yayy
```


### attribute vs argument 

Arguement : Is the property that we give for the system to build  [ AMI_ID ]
Attribute : Is the property which we use once the system comesup  [ private_ip ]

```
Major pain point in terraform is you cannot pass the info /outputs from one module to another module directly.
Instead you first needs to send the info to ROOT Module and from the root Module you can pass it to any module
```