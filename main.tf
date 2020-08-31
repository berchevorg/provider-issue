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