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
  type        = list(list(string))
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
    type        = number
    description = "The number of the machine count"
}




variable "disk_count" {
    type        = number
    description = "The number of the disk count"
}

variable "image_id" {
    type        = string
    description = "The id of the machine image"
}

variable "public_ssh_key_path" {
    type        = string
    description = "Public ssh key path"    
}

variable "az" {
    type = list(string)
    description = "List yandex network zones"
    default = [
        "ru-central1-a",
        "ru-central1-b"
    ]
}