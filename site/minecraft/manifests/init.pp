class minecraft {
  file {'/opt/minecraft':
    ensure => directory,
  }
  file {'/opt/minecraft/server.jar':
    ensure => file,
    source => 'https://piston-data.mojang.com/v1/objects/84194a2f286ef7c14ed7ce0090dba59902951553/server.jar'
  }
  file {'/opt/minecraft/eula.txt':
    ensure => file,
    content => 'eula=true',
  }
  file {'/etc/systemd/system/minecraft.service':
    ensure => file,
    content => "[Unit]
                Description=Minecraft Server

                Wants=network.target
                After=network.target

                [Service]
                WorkingDirectory=/opt/minecraft
                ExecStart=/usr/bin/java -Xmx1024M -Xms1024M -jar server.jar nogui

                [Install]
                WantedBy=multi-user.target",
  }
  service {'minecraft':
    ensure => running,
    enable => true,
  }
}
