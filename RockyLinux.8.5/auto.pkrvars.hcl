#vCenter Info
vcenter_server      = "vcenter-ip"
vcenter_username    = "administrator@vsphere.local"
vcenter_cluster     = "vcenter-cluster"
vcenter_datacenter  = "vcenter-dc"
vcenter_host        = "esxi-host-ip"
vcenter_datastore   = "storage"
vcenter_folder      = "Templates"
vcenter_password    = "vcenter-password"
vm_network          = "vcenter-network"

#VM Info:
http_directory    = "http"
os_version        = "8"
os_family         = "rocky-linux"
guest_os_type     = "centos8_64Guest"
cdrom_type        = "sata"
iso_url           = "https://download.rockylinux.org/pub/rocky/8/isos/x86_64/Rocky-8.5-x86_64-dvd1.iso"
iso_checksum      = "0081f8b969d0cef426530f6d618b962c7a01e71eb12a40581a83241f22dfdc25"
iso_checksum_type = "sha256"
root_disk_size    = 20000
connection_username = "username"
connection_password = "password"
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