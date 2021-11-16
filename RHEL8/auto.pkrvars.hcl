#vCenter Info
vcenter_server      = "vcenter-ip"
vcenter_username    = "administrator@vsphere.local"
vcenter_cluster     = "cluster-name"
vcenter_datacenter  = "dc-name"
vcenter_host        = "esxi-host-ip"
vcenter_datastore   = "storage"
vcenter_folder      = "Templates"
vcenter_password    = "vcenter-pass"
vm_network          = "network-name"



#VM Info Ubuntu:
http_directory  = "http"
os_version      = "8"
os_family       = "linux"
guest_os_type   = "rhel8_64Guest"
cdrom_type      = "sata"
iso_file        = "iso-directory"
iso_checksum    = "iso-checksum"
root_disk_size  = 15000
connection_username = "ssh-username"
connection_password = "ssh-password"
boot_command = [
      "<esc><wait>",
      "vmlinuz initrd=initrd.img inst.geoloc=0 rd.driver.blacklist=dm-multipath net.ifnames=0 biosdevname=0 ",
      "ks=http://{{.HTTPIP}}:{{.HTTPPort}}/kickstart.cfg",
      "<enter>"  
      ]

#Timeouts:
ip_wait     = "20m"
ssh_timeout = "20m"
ssh_port    = "22"
ssh_handshakes = "40"
shutdown_timeout = "15m"