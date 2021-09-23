# NFS STORAGE INSTALL

## SERVER 192.168.100.21

```bash
sudo apt-get install -y nfs-common nfs-kernel-server
```

Edit /etc/exports

```txt
/mnt/discoNFS/shared    *(rw,no_root_squash)
```

```bash
sudo systemctl restart nfs-kernel-server
```

## MASTER AND WORKERS

```bash
sudo apt-get install -y nfs-common
showmount -e 192.168.100.21
```