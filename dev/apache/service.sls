apache_service_start:
  service.running:
    - name: httpd

apache_service_enabled:
  service.enabled:
    - name: httpd
