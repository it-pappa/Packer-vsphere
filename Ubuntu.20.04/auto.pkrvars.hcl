#vCenter Info
vcenter_server      = "vcenter-ip"
vcenter_username    = "administrator@vsphere.local"
vcenter_cluster     = "clustername"
vcenter_datacenter  = "dc-name"
vcenter_host        = "esxi host"
vcenter_datastore   = "storage"
vcenter_folder      = "Templates"
vcenter_password    = "vcenter-password"
vm_network          = "networkname"

#VM Info Ubuntu:
http_directory  = "http"
os_version      = "20.04"
os_family       = "ubuntu"
guest_os_type   = "ubuntu64Guest"
cdrom_type      = "sata"
iso_url         = "https://releases.ubuntu.com/focal/ubuntu-20.04.3-live-server-amd64.iso"
iso_checksum    = "f8e3086f3cea0fb3fefb29937ab5ed9d19e767079633960ccb50e76153effc98"
root_disk_size  = 24000
connection_username = "username"
connection_password = "password"
boot_command = [
    "<esc><esc><esc>",
    "<enter><wait>",
    "/casper/vmlinuz ",
    "initrd=/casper/initrd ",
    "autoinstall ",
    "<enter>"
]

#Other:
#Output_Directory    = "your-dirPacker/Templates" 

#Timeouts:
ip_wait     = "20m"
ssh_timeout = "20m"
ssh_port    = "22"
ssh_handshakes = "40"
shutdown_timeout = "15m"