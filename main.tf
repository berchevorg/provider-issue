# terraform {
#   required_providers {
#     null = {}
#   }
# }

terraform {
  required_version = "0.13.1"
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "2.3.0"
    }
    
#     null = {
#       source  = "hashicorp/null"
#       version = "2.1.2"
#     }
    
   }
}

module "foo" {
  source = "./foo"
}


resource "random_string" "other" {
  length  = 8
}

output "foo" {
  value = module.foo
}


output "that" {
  value = module.foo.that
}

output "other" {
  value = random_string.other.result
}

# # Uncomment if needed
# resource "null_resource" "echo_dummyy" {
#   provisioner local-exec {
#     command = "echo HelloWorld"
#   }
# }
