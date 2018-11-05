# This is repo containt an example how to build a Xenial64 - Vagrant box with NGINX and test it with kitchen.

## Requirments:

1.  Install [VirtualBox](https://www.virtualbox.org/wiki/Downloads)
2.  Install [Vagrant](https://www.vagrantup.com)

To build vagrant box:

3.  Install [Packer](http://www.packer.io)
4.  Use below command:
```
packer build xenial64.json
```
To test you will need Kitchen:

Kitchen is a RubyGem so please find how to install and setup Test Kitchen for developing infrastructure code, check out the [Getting Started Guide](http://kitchen.ci/docs/getting-started/).

A following [gems](https://guides.rubygems.org/what-is-a-gem/) should be installed:

```
gem install  kitchen-vagrant
gem install  kitchen-inspec
```
Than simply execute a following commands:

```
kitchen converge
kitchen verify
kitchen destroy
```
So the result from the tests should be as follow:

```
Target:  ssh://vagrant@127.0.0.1:2222

  System Package nginx
     ✔  should be installed

Test Summary: 1 successful, 0 failures, 0 skipped
```
