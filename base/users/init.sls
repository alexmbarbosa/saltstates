{% for user, data in pillar.get('sysadmin_users', {}).items() %}}
user_{{ user }}:
  user.present:
    - name: {{ user }}
    - fullname: {{ data['fullname']}}
    - shell: {{ data['shell']}}
    - home: {{ data['home']}}
    - groups: {{ data['groups']}}
    - password: {{ data['password']}}

{{ user }}_key:
  ssh_auth.present:
    - name: {{ data['ssh_key'] }}
    - user: {{ user }}

{% endfor %}}

#sysadmin:
#  user.present:
#    - fullname: Sysadmin Administrator
#    - name: sysadmin
#    - shell: /bin/bash
#    - home: /home/sysadmin
#    - groups:
#      - wheel
#    - password: $6$oGMjI99Mfs.fQv13$Dviy1Aw0LKyHFyFiDCGUb9tcb0BNBE0f84.D20aeU.I5RRRmbIJGxYTZ9V8OUEdL.8jMeCnYMPzscTKKOC03X1

#key_sysadmin:
#  ssh_auth.present:
#    - name: aolinux
#    - user: sysadmin
#    - source: salt://users/keys/aolinux.pub
