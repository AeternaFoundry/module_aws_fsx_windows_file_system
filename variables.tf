variable "fsx_windows_file_systems" {
  description = <<EOT
Map of fsx_windows_file_systems, attributes below
Required:
    - subnet_ids
    - throughput_capacity
Optional:
    - active_directory_id
    - aliases
    - automatic_backup_retention_days
    - backup_id
    - copy_tags_to_backups
    - daily_automatic_backup_start_time
    - deployment_type
    - final_backup_tags
    - kms_key_id
    - preferred_subnet_id
    - region
    - security_group_ids
    - skip_final_backup
    - storage_capacity
    - storage_type
    - tags
    - tags_all
    - weekly_maintenance_start_time
    - audit_log_configuration (block):
        - audit_log_destination (optional)
        - file_access_audit_log_level (optional)
        - file_share_access_audit_log_level (optional)
    - disk_iops_configuration (block):
        - iops (optional)
        - mode (optional)
    - self_managed_active_directory (block):
        - dns_ips (required)
        - domain_join_service_account_secret (optional)
        - domain_name (required)
        - file_system_administrators_group (optional)
        - organizational_unit_distinguished_name (optional)
        - password (optional)
        - password_wo (optional)
        - password_wo_version (optional)
        - username (optional)
EOT

  type = map(object({
    subnet_ids                        = list(string)
    throughput_capacity               = number
    tags                              = optional(map(string))
    storage_type                      = optional(string)
    storage_capacity                  = optional(number)
    skip_final_backup                 = optional(bool)
    security_group_ids                = optional(set(string))
    region                            = optional(string)
    preferred_subnet_id               = optional(string)
    kms_key_id                        = optional(string)
    final_backup_tags                 = optional(map(string))
    deployment_type                   = optional(string)
    daily_automatic_backup_start_time = optional(string)
    copy_tags_to_backups              = optional(bool)
    backup_id                         = optional(string)
    automatic_backup_retention_days   = optional(number)
    aliases                           = optional(set(string))
    active_directory_id               = optional(string)
    tags_all                          = optional(map(string))
    weekly_maintenance_start_time     = optional(string)
    audit_log_configuration = optional(object({
      audit_log_destination             = optional(string)
      file_access_audit_log_level       = optional(string)
      file_share_access_audit_log_level = optional(string)
    }))
    disk_iops_configuration = optional(object({
      iops = optional(number)
      mode = optional(string)
    }))
    self_managed_active_directory = optional(object({
      dns_ips                                = set(string)
      domain_join_service_account_secret     = optional(string)
      domain_name                            = string
      file_system_administrators_group       = optional(string)
      organizational_unit_distinguished_name = optional(string)
      password                               = optional(string)
      password_wo                            = optional(string)
      password_wo_version                    = optional(number)
      username                               = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.fsx_windows_file_systems : (
        v.aliases == null || (alltrue([for x in v.aliases : (length(x) >= 4 && length(x) <= 253)]))
      )
    ])
    error_message = "all of: must be between 4 and 253 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.fsx_windows_file_systems : (
        v.automatic_backup_retention_days == null || (v.automatic_backup_retention_days >= 0 && v.automatic_backup_retention_days <= 90)
      )
    ])
    error_message = "must be between 0 and 90"
  }
  validation {
    condition = alltrue([
      for k, v in var.fsx_windows_file_systems : (
        v.daily_automatic_backup_start_time == null || ((length(v.daily_automatic_backup_start_time) >= 5 && length(v.daily_automatic_backup_start_time) <= 5) && (can(regex("^([01]\\d|2[0-3]):?([0-5]\\d)$", v.daily_automatic_backup_start_time))))
      )
    ])
    error_message = "all of: must be between 5 and 5 characters; must be in the format HH:MM"
  }
  validation {
    condition = alltrue([
      for k, v in var.fsx_windows_file_systems : (
        v.self_managed_active_directory == null || (v.self_managed_active_directory.file_system_administrators_group == null || (length(v.self_managed_active_directory.file_system_administrators_group) >= 1 && length(v.self_managed_active_directory.file_system_administrators_group) <= 256))
      )
    ])
    error_message = "must be between 1 and 256 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.fsx_windows_file_systems : (
        v.self_managed_active_directory == null || (v.self_managed_active_directory.organizational_unit_distinguished_name == null || (length(v.self_managed_active_directory.organizational_unit_distinguished_name) >= 1 && length(v.self_managed_active_directory.organizational_unit_distinguished_name) <= 2000))
      )
    ])
    error_message = "must be between 1 and 2000 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.fsx_windows_file_systems : (
        v.storage_capacity == null || (v.storage_capacity >= 32 && v.storage_capacity <= 65536)
      )
    ])
    error_message = "must be between 32 and 65536"
  }
  validation {
    condition = alltrue([
      for k, v in var.fsx_windows_file_systems : (
        contains([8, 16, 32, 64, 128, 256, 512, 1024, 2048, 4608, 6144, 9216, 12228], v.throughput_capacity)
      )
    ])
    error_message = "must be one of: 8, 16, 32, 64, 128, 256, 512, 1024, 2048, 4608, 6144, 9216, 12228"
  }
  validation {
    condition = alltrue([
      for k, v in var.fsx_windows_file_systems : (
        v.weekly_maintenance_start_time == null || ((length(v.weekly_maintenance_start_time) >= 7 && length(v.weekly_maintenance_start_time) <= 7) && (can(regex("^[1-7]:([01]\\d|2[0-3]):?([0-5]\\d)$", v.weekly_maintenance_start_time))))
      )
    ])
    error_message = "all of: must be between 7 and 7 characters; must be in the format d:HH:MM"
  }
  # Note: 12 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

