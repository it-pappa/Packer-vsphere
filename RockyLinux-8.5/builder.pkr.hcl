source "vsphere-iso" "rocky" {
  # vCenter settings
  vcenter_server      = var.vcenter_server
  username            = var.vcenter_username
  password            = var.vcenter_password
  insecure_connection = true
  cluster             = var.vcenter_cluster
  datacenter          = var.vcenter_datacenter
  host                = var.vcenter_host
  datastore           = var.vcenter_datastore
  folder              = var.vcenter_folder
  convert_to_template = true
  
  #Connection
  ip_wait_timeout       = var.ip_wait
  ssh_username          = var.connection_username
  ssh_password          = var.connection_password
  ssh_timeout           = var.ssh_timeout
  ssh_port              = var.ssh_port
  ssh_handshake_attempts = var.ssh_handshakes

  #VM Settings
  shutdown_timeout      = var.shutdown_timeout
  iso_url               = var.iso_url
  iso_checksum          = var.iso_checksum
  vm_name               = "${ var.os_family }-${ var.os_version }-{{ isotime \"2006-01-02\" }}"
  guest_os_type         = var.guest_os_type
  http_directory        = var.http_directory
  disk_controller_type  = ["pvscsi"]
  network_adapters {
    network = var.vm_network
    network_card = var.nic_type
  }
  storage {
    disk_size = var.root_disk_size
    disk_thin_provisioned = true
  }
  CPUs                  = var.num_cpu
  cpu_cores             = var.num_cores
  CPU_hot_plug          = true
  RAM                   = var.vm_ram
  RAM_hot_plug          = true
  boot_wait             = "5s"
  boot_command          = var.boot_command
}


build {
    sources = [
        "source.vsphere-iso.rocky",
    ]
    provisioner "shell" {
      execute_command = "echo '${var.connection_password}' | {{.Vars}} sudo -S -E sh -eux '{{.Path}}'" 
      scripts = [
          "bash/prep.sh"
      ]
    }
} 