# Nginx

This image adds a default self-signed SSL certificate to nginx.

The certificate can be used like the following example.
```
ssl_certificate /etc/ssl/certs/ssl-cert-snakeoil.pem;
ssl_certificate_key /etc/ssl/private/ssl-cert-snakeoil.key;
```
