output "fsx_windows_file_systems_id" {
  description = "Map of id values across all fsx_windows_file_systems, keyed the same as var.fsx_windows_file_systems"
  value       = { for k, v in aws_fsx_windows_file_system.fsx_windows_file_systems : k => v.id if v.id != null && length(v.id) > 0 }
}
output "fsx_windows_file_systems_active_directory_id" {
  description = "Map of active_directory_id values across all fsx_windows_file_systems, keyed the same as var.fsx_windows_file_systems"
  value       = { for k, v in aws_fsx_windows_file_system.fsx_windows_file_systems : k => v.active_directory_id if v.active_directory_id != null && length(v.active_directory_id) > 0 }
}
output "fsx_windows_file_systems_aliases" {
  description = "Map of aliases values across all fsx_windows_file_systems, keyed the same as var.fsx_windows_file_systems"
  value       = { for k, v in aws_fsx_windows_file_system.fsx_windows_file_systems : k => v.aliases if v.aliases != null && length(v.aliases) > 0 }
}
output "fsx_windows_file_systems_arn" {
  description = "Map of arn values across all fsx_windows_file_systems, keyed the same as var.fsx_windows_file_systems"
  value       = { for k, v in aws_fsx_windows_file_system.fsx_windows_file_systems : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "fsx_windows_file_systems_audit_log_configuration" {
  description = "Map of audit_log_configuration values across all fsx_windows_file_systems, keyed the same as var.fsx_windows_file_systems"
  value       = { for k, v in aws_fsx_windows_file_system.fsx_windows_file_systems : k => one(v.audit_log_configuration) if v.audit_log_configuration != null && length(v.audit_log_configuration) > 0 }
}
output "fsx_windows_file_systems_automatic_backup_retention_days" {
  description = "Map of automatic_backup_retention_days values across all fsx_windows_file_systems, keyed the same as var.fsx_windows_file_systems"
  value       = { for k, v in aws_fsx_windows_file_system.fsx_windows_file_systems : k => v.automatic_backup_retention_days if v.automatic_backup_retention_days != null }
}
output "fsx_windows_file_systems_backup_id" {
  description = "Map of backup_id values across all fsx_windows_file_systems, keyed the same as var.fsx_windows_file_systems"
  value       = { for k, v in aws_fsx_windows_file_system.fsx_windows_file_systems : k => v.backup_id if v.backup_id != null && length(v.backup_id) > 0 }
}
output "fsx_windows_file_systems_copy_tags_to_backups" {
  description = "Map of copy_tags_to_backups values across all fsx_windows_file_systems, keyed the same as var.fsx_windows_file_systems"
  value       = { for k, v in aws_fsx_windows_file_system.fsx_windows_file_systems : k => v.copy_tags_to_backups if v.copy_tags_to_backups != null }
}
output "fsx_windows_file_systems_daily_automatic_backup_start_time" {
  description = "Map of daily_automatic_backup_start_time values across all fsx_windows_file_systems, keyed the same as var.fsx_windows_file_systems"
  value       = { for k, v in aws_fsx_windows_file_system.fsx_windows_file_systems : k => v.daily_automatic_backup_start_time if v.daily_automatic_backup_start_time != null && length(v.daily_automatic_backup_start_time) > 0 }
}
output "fsx_windows_file_systems_deployment_type" {
  description = "Map of deployment_type values across all fsx_windows_file_systems, keyed the same as var.fsx_windows_file_systems"
  value       = { for k, v in aws_fsx_windows_file_system.fsx_windows_file_systems : k => v.deployment_type if v.deployment_type != null && length(v.deployment_type) > 0 }
}
output "fsx_windows_file_systems_disk_iops_configuration" {
  description = "Map of disk_iops_configuration values across all fsx_windows_file_systems, keyed the same as var.fsx_windows_file_systems"
  value       = { for k, v in aws_fsx_windows_file_system.fsx_windows_file_systems : k => one(v.disk_iops_configuration) if v.disk_iops_configuration != null && length(v.disk_iops_configuration) > 0 }
}
output "fsx_windows_file_systems_dns_name" {
  description = "Map of dns_name values across all fsx_windows_file_systems, keyed the same as var.fsx_windows_file_systems"
  value       = { for k, v in aws_fsx_windows_file_system.fsx_windows_file_systems : k => v.dns_name if v.dns_name != null && length(v.dns_name) > 0 }
}
output "fsx_windows_file_systems_final_backup_tags" {
  description = "Map of final_backup_tags values across all fsx_windows_file_systems, keyed the same as var.fsx_windows_file_systems"
  value       = { for k, v in aws_fsx_windows_file_system.fsx_windows_file_systems : k => v.final_backup_tags if v.final_backup_tags != null && length(v.final_backup_tags) > 0 }
}
output "fsx_windows_file_systems_kms_key_id" {
  description = "Map of kms_key_id values across all fsx_windows_file_systems, keyed the same as var.fsx_windows_file_systems"
  value       = { for k, v in aws_fsx_windows_file_system.fsx_windows_file_systems : k => v.kms_key_id if v.kms_key_id != null && length(v.kms_key_id) > 0 }
}
output "fsx_windows_file_systems_network_interface_ids" {
  description = "Map of network_interface_ids values across all fsx_windows_file_systems, keyed the same as var.fsx_windows_file_systems"
  value       = { for k, v in aws_fsx_windows_file_system.fsx_windows_file_systems : k => v.network_interface_ids if v.network_interface_ids != null && length(v.network_interface_ids) > 0 }
}
output "fsx_windows_file_systems_owner_id" {
  description = "Map of owner_id values across all fsx_windows_file_systems, keyed the same as var.fsx_windows_file_systems"
  value       = { for k, v in aws_fsx_windows_file_system.fsx_windows_file_systems : k => v.owner_id if v.owner_id != null && length(v.owner_id) > 0 }
}
output "fsx_windows_file_systems_preferred_file_server_ip" {
  description = "Map of preferred_file_server_ip values across all fsx_windows_file_systems, keyed the same as var.fsx_windows_file_systems"
  value       = { for k, v in aws_fsx_windows_file_system.fsx_windows_file_systems : k => v.preferred_file_server_ip if v.preferred_file_server_ip != null && length(v.preferred_file_server_ip) > 0 }
}
output "fsx_windows_file_systems_preferred_subnet_id" {
  description = "Map of preferred_subnet_id values across all fsx_windows_file_systems, keyed the same as var.fsx_windows_file_systems"
  value       = { for k, v in aws_fsx_windows_file_system.fsx_windows_file_systems : k => v.preferred_subnet_id if v.preferred_subnet_id != null && length(v.preferred_subnet_id) > 0 }
}
output "fsx_windows_file_systems_region" {
  description = "Map of region values across all fsx_windows_file_systems, keyed the same as var.fsx_windows_file_systems"
  value       = { for k, v in aws_fsx_windows_file_system.fsx_windows_file_systems : k => v.region if v.region != null && length(v.region) > 0 }
}
output "fsx_windows_file_systems_remote_administration_endpoint" {
  description = "Map of remote_administration_endpoint values across all fsx_windows_file_systems, keyed the same as var.fsx_windows_file_systems"
  value       = { for k, v in aws_fsx_windows_file_system.fsx_windows_file_systems : k => v.remote_administration_endpoint if v.remote_administration_endpoint != null && length(v.remote_administration_endpoint) > 0 }
}
output "fsx_windows_file_systems_security_group_ids" {
  description = "Map of security_group_ids values across all fsx_windows_file_systems, keyed the same as var.fsx_windows_file_systems"
  value       = { for k, v in aws_fsx_windows_file_system.fsx_windows_file_systems : k => v.security_group_ids if v.security_group_ids != null && length(v.security_group_ids) > 0 }
}
output "fsx_windows_file_systems_self_managed_active_directory" {
  description = "Map of self_managed_active_directory values across all fsx_windows_file_systems, keyed the same as var.fsx_windows_file_systems"
  value       = { for k, v in aws_fsx_windows_file_system.fsx_windows_file_systems : k => one(v.self_managed_active_directory) if v.self_managed_active_directory != null && length(v.self_managed_active_directory) > 0 }
  sensitive   = true
}
output "fsx_windows_file_systems_skip_final_backup" {
  description = "Map of skip_final_backup values across all fsx_windows_file_systems, keyed the same as var.fsx_windows_file_systems"
  value       = { for k, v in aws_fsx_windows_file_system.fsx_windows_file_systems : k => v.skip_final_backup if v.skip_final_backup != null }
}
output "fsx_windows_file_systems_storage_capacity" {
  description = "Map of storage_capacity values across all fsx_windows_file_systems, keyed the same as var.fsx_windows_file_systems"
  value       = { for k, v in aws_fsx_windows_file_system.fsx_windows_file_systems : k => v.storage_capacity if v.storage_capacity != null }
}
output "fsx_windows_file_systems_storage_type" {
  description = "Map of storage_type values across all fsx_windows_file_systems, keyed the same as var.fsx_windows_file_systems"
  value       = { for k, v in aws_fsx_windows_file_system.fsx_windows_file_systems : k => v.storage_type if v.storage_type != null && length(v.storage_type) > 0 }
}
output "fsx_windows_file_systems_subnet_ids" {
  description = "Map of subnet_ids values across all fsx_windows_file_systems, keyed the same as var.fsx_windows_file_systems"
  value       = { for k, v in aws_fsx_windows_file_system.fsx_windows_file_systems : k => v.subnet_ids if v.subnet_ids != null && length(v.subnet_ids) > 0 }
}
output "fsx_windows_file_systems_tags" {
  description = "Map of tags values across all fsx_windows_file_systems, keyed the same as var.fsx_windows_file_systems"
  value       = { for k, v in aws_fsx_windows_file_system.fsx_windows_file_systems : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "fsx_windows_file_systems_tags_all" {
  description = "Map of tags_all values across all fsx_windows_file_systems, keyed the same as var.fsx_windows_file_systems"
  value       = { for k, v in aws_fsx_windows_file_system.fsx_windows_file_systems : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}
output "fsx_windows_file_systems_throughput_capacity" {
  description = "Map of throughput_capacity values across all fsx_windows_file_systems, keyed the same as var.fsx_windows_file_systems"
  value       = { for k, v in aws_fsx_windows_file_system.fsx_windows_file_systems : k => v.throughput_capacity if v.throughput_capacity != null }
}
output "fsx_windows_file_systems_vpc_id" {
  description = "Map of vpc_id values across all fsx_windows_file_systems, keyed the same as var.fsx_windows_file_systems"
  value       = { for k, v in aws_fsx_windows_file_system.fsx_windows_file_systems : k => v.vpc_id if v.vpc_id != null && length(v.vpc_id) > 0 }
}
output "fsx_windows_file_systems_weekly_maintenance_start_time" {
  description = "Map of weekly_maintenance_start_time values across all fsx_windows_file_systems, keyed the same as var.fsx_windows_file_systems"
  value       = { for k, v in aws_fsx_windows_file_system.fsx_windows_file_systems : k => v.weekly_maintenance_start_time if v.weekly_maintenance_start_time != null && length(v.weekly_maintenance_start_time) > 0 }
}

