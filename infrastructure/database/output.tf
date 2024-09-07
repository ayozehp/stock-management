output "db_identifier" {
  value = aws_db_instance.app_db.identifier
}

output "db_secret" {
  value = aws_db_instance.app_db.master_user_secret
}