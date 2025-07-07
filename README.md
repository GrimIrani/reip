# reip
All the VPN clients in a single-file!!!
- tor
- sing-box
- v2ray-core
- openvpn
- wireguard
- http/socks proxy
- ...

# tunnel
Easy peasy multiple ways to tunnel you system!!!
- [hev-socks5-server](https://github.com/heiher/hev-socks5-tunnel)
- tun2socks
- redsocks
- proxychains-ng

# proxy
you can proxy every protocols.

even proxy **openvpn** and **wireguard** using docker.

# the single-file
reip single-file use ![makeself](https://github.com/megastep/makeself),

for example **tor** have a binary, that binary will archive the single-file so you don't need tor anymore.

or sing-box

or v2ray-core

or openvpn-client

or ...

you need just the reip single-file!

# Usage
```
Usage:
  reip <command> <options> profile

Examples:
  reip tun tor
  reip tun vless://...
  reip tun config.ovpn
  reip tun wire01.conf
  reip proxy --Socks5 127.0.0.0:1080 tor

Commands:
  tun          Tunnel all the system
  run          run the program with proxy
  proxy        open a proxy port
  set          set a VPN profile
  del          delete a VPN profile
  toggle       Toggle the reip service
  status       Show the status of the reip service
  install      Install the reip
  uninstall    Uninstall the reip
  upgrade      Upgrade the reip
  deamon       make a deamon on the system
  version      Show the version of the reip
  help         Show this help message
```
