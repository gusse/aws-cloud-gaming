variable "region" {
  description = "The aws region. Choose the one closest to you: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-regions-availability-zones.html#concepts-available-regions"
  type        = string
}

variable "resource_name" {
  description = "Name with which to prefix resources in AWS"
  type        = string
  default     = "cloud-gaming"
}

variable "allowed_availability_zone_identifier" {
  description = "The allowed availability zone identify (the letter suffixing the region). Choose ones that allows you to request the desired instance as spot instance in your region. An availability zone will be selected at random and the instance will be booted in it."
  type        = list(string)
  default     = ["a", "b"]
}

variable "instance_type" {
  description = "The aws instance type, Choose one with a CPU/GPU that fits your need: https://aws.amazon.com/ec2/instance-types/#Accelerated_Computing"
  type        = string
  default     = "g4dn.xlarge"
}

variable "root_block_device_size_gb" {
  description = "The size of the root block device (C:\\ drive) attached to the instance"
  type        = number
  default     = 120
}

variable "custom_ami" {
  description = "Use the specified AMI instead of the most recent windows AMI in available in the region"
  type        = string
  default     = ""
}

variable "install_parsec" {
  description = "Download and run Parsec-Cloud-Preparation-Tool on first login"
  type        = bool
  default     = true
}

variable "install_auto_login" {
  description = "Configure auto-login on first boot"
  type        = bool
  default     = true
}

variable "install_graphic_card_driver" {
  description = "Download and install the Nvidia driver on first boot"
  type        = bool
  default     = true
}

variable "install_steam" {
  description = "Download and install Valve Steam on first boot"
  type        = bool
  default     = true
}

variable "use_spot" {
  type        = bool
  default     = true
  description = "Use 100% spot instances in the autoscaling group"
}

variable "power_on" {
  type        = bool
  default     = true
  description = "True to scale to 1 instance, false to 0"
}
