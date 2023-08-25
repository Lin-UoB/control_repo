class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDZYEo6RR4uHKm5G0gYpjAJLXK8p822CQPFfofo4uqyHLEsjd6fwzl9/+ByvmkXR/uGoRExP/xzyGcSe4G18XliM7dfY8dRs+FGJZPcOeZn9pdBuwqkdy0NmOahPslucRlV6tdaiEKWmXc65TFJibLA9X91+ONXJeTrx3K5I09IKFpLtbMsA9p4hGYykZ0my+PZd++aanp2zNvKBZOzmt/AKwqIdAcZgm0VLwqXJ259JXceCwctw2zvYi5t4uCR4V0rCcy7DQyrp79X7FatkUh5CBkhpBg8rLjDoHk35Q9yfaqLFDTIMCbVgUYGQ0TexjCQf+x+R+l3oHSv/X0HDUgL',
	}  
}
