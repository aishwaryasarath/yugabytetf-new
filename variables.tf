variable "region_name" {
  description = "The region name where the nodes should be spawned."
  type        = string
  default     = "us-east1"

}

variable "ssh_user" {
  description = "The SSH user to connect to the nodes."
  type        = string
  default     = "centos"
}
variable "ssh_private_key" {
  description = "The SSH private key to connect to the nodes."
  type        = string
  default     = "~/.ssh/id_rsa"
}
variable "ssh_public_key" {
  description = "The SSH public key to connect to the nodes."
  type        = string
  default     = "~/.ssh/id_rsa.pub"
}
