module "bar" {
  source = "./bar"
}

resource "random_string" "that" {
  length  = 4 4 4 4 
}

output "bar" {
  value = module.bar
}

output "that" {
  value = random_string.that.result
}

