# HubbleBox

This repo is the Vagrant Box for contributing to the [Hubble Server](https://github.com/apcros/Hubble)

## How To 

Clone the repo, cd in the directory and then run : 

	vagrant up

(You need [Vagrant](https://www.vagrantup.com/) and [VirtualBox](https://www.virtualbox.org/) installed)

When the provisionning is finished, you should be able to reach your app on [http://localhost:5580/](http://localhost:5580/)
(Which is also the "Api Entry point" asked by the client)

If you need a different port, you can change it in the vagrant file

## Contributing

If you want to use your HubbleBox to contribute to the Hubble codebase, you can either  :

- code directly from the vm
- Connect to the vm with CyberDuck, FileZilla..etc with Vagrant's keys
- Add a new shared volume in the VagrantFile to /srv/hubble-app/

Make sure to keep the directory on your vm up to date.