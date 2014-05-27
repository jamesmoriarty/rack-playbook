Ansible Rackup Playbook
=====================

Description
-----------

Deploy compatible rack apps with ansible.

Examples
--------

- [Rack](https://github.com/jamesmoriarty/rack-playbook/blob/master/rackup.yml)

Requirements
------------

- Centos / Redhat
- Ansible

Stack
-----

- Rack
- Unicorn
- Nginx

Monitoring
----------

- Runit

Test
----

```bash
vagrant up
```

```bash
vagrant provision
```

```bash
vagrant destroy -f && vagrant up
```

