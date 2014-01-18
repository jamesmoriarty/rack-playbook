Ansible Rack Playbook
=====================

Description
-----------

Deploy compatable rack apps.

Stack
-----

- Unicorn
- Nginx

Example
-------

```
- hosts: app
  sudo: no
  roles:
    - common
    - postgresql
    - memcached
    - rackup
  vars_files:
    - vars/main.yml
  vars:
    ruby_version:   2.0.0-p353

    deploy_repo:    git@github.com:example/example.git
    deploy_version: master
    deploy_cmds:
      - "gem install bundler"
      - "bundle config build.pg --with-pg=/usr/pgsql-9.3"
      - "bundle install --without test ci development"
      - "bundle exec rake db:create"
      - "bundle exec rake db:migrate"
      - "bundle exec rake assets:precompile"

    env:
      RACK_ENV: production
```

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


