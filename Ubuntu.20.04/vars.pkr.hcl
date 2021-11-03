#vCenter Info
variable "vcenter_server" {}
variable "vcenter_username" {}
variable "vcenter_password" {}
variable "vcenter_cluster" {}
variable "vcenter_datacenter" {}
variable "vcenter_host" {}
variable "vcenter_datastore" {}
variable "vcenter_folder" {}

#Vm Info
variable "http_directory" {}
variable "connection_username" {}
variable "connection_password" {}
variable "ssh_port" {}
variable "os_version" {}
variable "iso_url" {}
variable "iso_checksum" {}
variable "cdrom_type" {}
variable "guest_os_type" {}
variable "root_disk_size" {
    default = 24000
}
variable "nic_type" {
    default = "vmxnet3"
}
variable "vm_network" { }
variable "num_cpu" {
    default = 2
}
variable "num_cores" {
    default = 1
}
variable "vm_ram" {
    default = 4096
}
variable "os_family" {}
variable "boot_command" {}

#Other Info:
variable "Output_Directory" {}
variable "ip_wait" {}
variable "ssh_timeout" {}
variable "ssh_handshakes" {}
variable "shutdown_timeout" {}