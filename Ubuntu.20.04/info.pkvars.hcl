#vCenter Info
vcenter_server      = "ip/dns"
vcenter_username    = "username@vsphere.local"
vcenter_cluster     = "cluster_name"
vcenter_datacenter  = "dataventer_name"
vcenter_host        = "esxi host ip/dns"
vcenter_datastore   = "datastore"
vcenter_folder      = "Templates"
vcenter_password    = "password"
vm_network          = "network"


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
Output_Directory    = "local/directory" 

#Timeouts:
ip_wait     = "20m"
ssh_timeout = "20m"
ssh_port    = "22"
ssh_handshakes = "40"
shutdown_timeout = "15m"