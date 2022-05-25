apache_configuration:
  file.managed:
    - name: /etc/httpd/httpd.conf
    - source: salt://apache/files/httpd.conf
    - require:
      - pkg: httpd

apache_restart:
  module.wait:
    - name: service.restart
    - m_name: httpd
    - watch:
      - apache_configuration
