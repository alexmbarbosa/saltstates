user_deployer:
  user.present:
    - fullname: Sysadmin Administrator
    - name: deployer
    - shell: /bin/bash
    - home: /home/deployer
    - groups:
      - wheel
    - password: $6$ZJQ4K5Kp/O2xruar$/nYtMnjMuHf44EvGSHnmHF.qY4kFr4.r7NmGwHmwZjzYme9MLFCsJ95mTwyKIkWiy0OR321yOt7ETKr.q8R9N0

key_deployer:
  ssh_auth.present:
    - name: deployer
    - user: deployer
    - source: salt://users/keys/cloud_guru.pub