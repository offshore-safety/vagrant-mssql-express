# vagrant-mssql-express

A Windows Server 2008 R2 VM with SQL Server Express 2008 R2 SP2 powered by Vagrant.
This is a fork of [https://github.com/fgrehm/vagrant-mssql-express](https://github.com/fgrehm/vagrant-mssql-express)

## Requirements

* Vagrant 1.6+ (tested on 1.6.3)
* VirtualBox 4.3+ (tested on 4.3.16 on an Ubuntu host)
* Around `12GB` of disk space (`3GB` for base box + `~9GB` for the VM)

## Base box information

* Configured with 2 CPU and 2 GB memory by default.
* No updates or services packs applied
* The box is not activated. It has been created for testing and evaluation
  purposes only. Use of this machine for greater than 30 days will require a
  full license either via MSDN or your local Microsoft Reseller.


More information can be found on the [box page at Vagrant Cloud](https://vagrantcloud.com/opentable/boxes/win-2008r2-standard-amd64-nocm).

## Usage

```sh
git clone https://github.com/fgrehm/vagrant-mssql-express.git
cd vagrant-mssql-express

# Launch the downloads in parallel because you're gonna be waiting a while!  Alternatively get a copy of the box image from someone on the team
wget https://atlas.hashicorp.com/opentable/boxes/win-2008r2-standard-amd64-nocm/versions/1.0.1/providers/virtualbox.box
# Download SQL Server with Tools installer
wget http://download.microsoft.com/download/0/4/B/04BE03CD-EAF3-4797-9D8D-2E08E316C998/SQLEXPRWT_x64_ENU.exe

vagrant plugin install vagrant-reload

# If there is an error with the installation of NOKOGIRI, manually install with
gem install nokogiri -v '1.6.6.2'
NOKOGIRI_USE_SYSTEM_LIBRARIES=1 vagrant plugin install vagrant-reload

vagrant up
# Get a coffee (or two) as it will take a while for it to finish provisioning
```

### Connecting to the SQL Server instance that runs inside the VM

Standard user for the RMS databases

* Username: `nopsema`
* Password: `nopsema`

Superuser for database admin if needed

* IP / Host: `192.168.50.4`
* Username: `sa`
* Password: `#SAPassword!`


### Connecting to the VM using [Remote Desktop](https://en.wikipedia.org/wiki/Remote_Desktop_Protocol) connections

On a Mac, you'll need an RDP client, CoRD seems good enough (despite being hosted on sourceforge!) http://cord.sourceforge.net/

Credentials

* username: vagrant
* password: va

## More information
