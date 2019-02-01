Telethon Kids Institute ShinyProxy Docker Template
================

<!-- README.md is generated from README.Rmd. Please edit that file -->

## Docker Ubuntu Server Installation/Set-up

1.  Docker CE for Ubuntu installation:
    <https://docs.docker.com/install/linux/docker-ce/ubuntu/>
2.  Follow post-installation instructions:
    <https://docs.docker.com/install/linux/linux-postinstall/>
    1.  configuring the daemon.json file will not work with Ubuntu 16.04
        (and above), instead add the following to the systemd unit file:
        `ExecStart=/usr/bin/dockerd -H fd:// -H tcp://127.0.0.1:275 -H
        unix:///var/run/docker.sock`
3.  Install docker-compose <https://docs.docker.com/compose/install/>
    (optional):

<!-- end list -->

    sudo curl -L "https://github.com/docker/compose/releases/download/1.24.0-rc1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
    sudo chmod +x /usr/local/bin/docker-compose
    sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose

## Docker App Deployment

1.  Build Shiny App Docker image:
    1.  Change current directory to project folder `cd ...`
    2.  `docker build -t telethonkids/new_shiny_app ./<project
        directory>/webapp`
2.  Start Docker containers
    3.  `docker-compose up -d`
3.  App is ready on port 80: in browser, go to 192.168.99.100 (windows)
    or 127.17.0.1 (Ubuntu)
