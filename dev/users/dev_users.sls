user_deployer:
  user.present:
    - fullname: Sysadmin Administrator
    - name: deployer
    - shell: /bin/bash
    - home: /home/deployer
    - groups:
      - wheel
    - password: $5$1rc8cy6W92.Rcbik$VQYXhUetU0uszaP7zkY4eq8GCwNk8eR72MLTmmemBaD

key_deployer:
  ssh_auth.present:
    - name: deployer
    - user: deployer
    - source: salt://users/keys/cloud_guru.pub