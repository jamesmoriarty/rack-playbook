Ansible Rack Playbook
=====================

Description
-----------

Intended to deploy compatable rack apps.

- Rbenv
- Unicorn
- Nginx

Capistrano like directory structure.

```
rack_app/
├── current -> /home/vagrant/rack_app/releases/1389694806
└── releases
    ├── 1389694585
    │   ├── config.ru
    │   ├── Gemfile
    │   ├── Gemfile.lock
    │   └── unicorn.conf.rb
```

Notes
-----

    export ANSIBLE_SSH_ARGS="-o ForwardAgent=yes"

Test
----

Pending server spec.

    vagrant destroy -f && vagrant up && ansible-playbook -i hosts


