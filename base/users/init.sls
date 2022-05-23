sysadmin:
  user.present:
    - fullname: Sysadmin Administrator
    - shell: /bin/bash
    - home: /home/sysadmin
    - groups:
      - wheel
    - password: $5$1rc8cy6W92.Rcbik$VQYXhUetU0uszaP7zkY4eq8GCwNk8eR72MLTmmemBaD