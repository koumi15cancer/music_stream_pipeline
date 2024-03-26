output "supbase_key" {
  value = data.infisical_secrets.my-secrets.secrets[var.supbase_token].value
   sensitive = true
}

output "upstash_key" {
  value = data.infisical_secrets.my-secrets.secrets[var.upstash_token].value
   sensitive = true
}