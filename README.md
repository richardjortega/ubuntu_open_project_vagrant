# OpenProject Vagrant

## Usage

```bash
$ git clone ubuntu_open_project.git
$ cd ubuntu_open_project
$ vagrant up
```

## Post-install Config
```bash
$ vagrant ssh

# Set everything to automatic install, use Sendmail for sending
$ sudo openproject-ce configure

# Go to package installed directory and make sure everything is setup
$ cd /opt/openproject-ce
$ bundle exec install
$ rake assets:precompile
```
