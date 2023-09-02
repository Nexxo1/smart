# smart
Simple SMART utility that uses smartmontools

Example docker compose
```
version: "3"
services:
  smart:
    image: ubersmart:latest
    hostname: ...
    container_name: ubersmart
    cap_add:
      - SYS_RAWIO
      - SYS_ADMIN
    environment:
      - TZ=Australia/Adelaide
      - MAILFROM=....@gmail.com
      - MAILUSER=....@gmail.com
      - MAILPASS=...
      - HOSTNAME=...
      - MAILHUB=smtp.gmail.com:587
      - DOMAIN=...
      
    devices:
      - /dev/sda 
      - /dev/sdb 
      - /dev/sdc 
      - /dev/sdd 
      - /dev/sde 
      - /dev/sdf 
    # privileged: true     
    restart: unless-stopped
```
