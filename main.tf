# terraform {
#   required_providers {
#     null = {}
#   }
# }

module "foo" {
  source = "./foo"
}


resource "random_string" "other" {
  length  = 7
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
