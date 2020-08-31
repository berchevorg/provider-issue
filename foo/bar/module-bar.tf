resource "random_string" "this" {
  length  = 7
}

output "foo" {
  value = random_string.this.result
}