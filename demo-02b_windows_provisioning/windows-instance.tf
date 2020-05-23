resource "aws_key_pair" "mykey" {
  key_name   = "mykey"
  public_key = file(var.PATH_TO_PUBLIC_KEY)
<<<<<<< HEAD
<<<<<<< HEAD
}

resource "aws_instance" "win-example" {
  ami           = var.WIN_AMIS[var.AWS_REGION]
  instance_type = "t2.micro"
  key_name      = aws_key_pair.mykey.key_name
  user_data     = <<EOF
<powershell>
net user ${var.INSTANCE_USERNAME} '${var.INSTANCE_PASSWORD}' /add /y
net localgroup administrators ${var.INSTANCE_USERNAME} /add

winrm quickconfig -q
winrm set winrm/config/winrs '@{MaxMemoryPerShellMB="300"}'
winrm set winrm/config '@{MaxTimeoutms="1800000"}'
winrm set winrm/config/service '@{AllowUnencrypted="true"}'
winrm set winrm/config/service/auth '@{Basic="true"}'
=======
***REMOVED***
=======
}
>>>>>>> 78c7374... update_vars_image

resource "aws_instance" "win-example" {
  ami           = var.WIN_AMIS[var.AWS_REGION]
  instance_type = "t2.micro"
  key_name      = aws_key_pair.mykey.key_name
  user_data     = <<EOF
<powershell>
net user ${var.INSTANCE_USERNAME} '${var.INSTANCE_PASSWORD}' /add /y
net localgroup administrators ${var.INSTANCE_USERNAME} /add

winrm quickconfig -q
<<<<<<< HEAD
winrm set winrm/config/winrs '@{MaxMemoryPerShellMB="300"***REMOVED***'
winrm set winrm/config '@{MaxTimeoutms="1800000"***REMOVED***'
winrm set winrm/config/service '@{AllowUnencrypted="true"***REMOVED***'
winrm set winrm/config/service/auth '@{Basic="true"***REMOVED***'
>>>>>>> 986ba1c... add_demos
=======
winrm set winrm/config/winrs '@{MaxMemoryPerShellMB="300"}'
winrm set winrm/config '@{MaxTimeoutms="1800000"}'
winrm set winrm/config/service '@{AllowUnencrypted="true"}'
winrm set winrm/config/service/auth '@{Basic="true"}'
>>>>>>> 78c7374... update_vars_image

netsh advfirewall firewall add rule name="WinRM 5985" protocol=TCP dir=in localport=5985 action=allow
netsh advfirewall firewall add rule name="WinRM 5986" protocol=TCP dir=in localport=5986 action=allow

net stop winrm
sc.exe config winrm start=auto
net start winrm
</powershell>
EOF


  provisioner "file" {
    source = "test.txt"
    destination = "C:/test.txt"
<<<<<<< HEAD
<<<<<<< HEAD
  }
=======
  ***REMOVED***
>>>>>>> 986ba1c... add_demos
=======
  }
>>>>>>> 78c7374... update_vars_image
  connection {
    host = coalesce(self.public_ip, self.private_ip)
    type = "winrm"
    timeout = "10m"
    user = var.INSTANCE_USERNAME
    password = var.INSTANCE_PASSWORD
<<<<<<< HEAD
<<<<<<< HEAD
  }
}
=======
  ***REMOVED***
***REMOVED***
>>>>>>> 986ba1c... add_demos
=======
  }
}
>>>>>>> 78c7374... update_vars_image

