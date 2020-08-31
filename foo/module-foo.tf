module "bar" {
  source = "./bar"
}

resource "random_string" "that" {
  length  = 3
}

output "bar" {
  value = module.bar
}

output "that" {
  value = random_string.that.result
}

