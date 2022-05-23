user_sysadmin:
  user.present:
    - fullname: Sysadmin Administrator
    - name: sysadmin
    - shell: /bin/bash
    - home: /home/sysadmin
    - groups:
      - wheel
    - password: $6$oGMjI99Mfs.fQv13$Dviy1Aw0LKyHFyFiDCGUb9tcb0BNBE0f84.D20aeU.I5RRRmbIJGxYTZ9V8OUEdL.8jMeCnYMPzscTKKOC03X1

key_sysadmin:
  ssh_auth.present:
    - name: aolinux
    - user: sysadmin
    - source: salt://users/keys/aolinux.pub