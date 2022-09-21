variable "guarduty_enabled" {
  type        = bool
  default     = true
  description = "Whether to enable GuardDuty or not."
}

variable "guarduty_finding_publishing_frequency" {
  type        = string
  default     = "SIX_HOURS"
  description = "The frequency of findings publishing."
}

variable "guarduty_s3_protection_enabled" {
  type        = bool
  default     = true // false
  description = "Whether to enable GuardDuty S3 protection or not."
}

variable "guarduty_kubernetes_protection_enabled" {
  type        = bool
  default     = true // false
  description = "Whether to enable Kubernetes protection or not."
}

variable "guarduty_malware_protection_enabled" {
  type        = bool
  default     = true // false
  description = "Whether to enable Malware protection or not."
}

variable "guardduty_delegated_admin_account_id" {
  type        = number
  description = "The account id of the account that will be GuardDuty's delegated admin."
}
