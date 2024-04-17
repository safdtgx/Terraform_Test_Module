#Network

variable "network_name" {
    type        = string
    description = "The network name"
}

variable "stand" {
    type        = string
    description = "Stand name"
}

variable "zone" {
    type        = string
    description = "Stand name"
}

variable "cidr_blocks" {
  type        = list(string)
  description = "List of lists of IPv4 cidr blocks for subnets"
}


#Instance

variable "vm_count" {
    type        = number
    description = "The number of the machine count"
}

variable "vm_cores_count" {
    type        = number
    description = "The number of the cores count per instance"
}

variable "vm_memory" {
    type        = number
    description = "The number of the memory per instance"
}

variable "platform" {
    type        = string
    description = "The number of the machine count"
}
