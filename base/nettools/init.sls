install_nettools:
  pkg.installed:
    - pkgs:
      - curl
      - nmap-ncat
      - tcpdump
      - vnstat
      - nload
      - nethogs