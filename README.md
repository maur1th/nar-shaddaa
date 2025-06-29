# nar-shaddaa
Home server configuration for Debian 11

## Features
- DHCP Server
- Samba share
- Transmission

## How to use

### Le Village

`ansible-playbook -i hosts -llevillage playbook.yml`

### Home

(Dry) Run only on dhcp_server group:
```bash
ansible-playbook \
  -i hosts \
  --vault-password-file=~/.vault_pass \
  playbook.yml \
  --limit dhcp_server \
  --check
```

## Troubleshooting

* Debug connection issues with: `nmcli connection show`
* Might have to migrate dhcp server networking from `/etc/network/interfaces` to network-manager (`nmcli`)
