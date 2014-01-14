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
