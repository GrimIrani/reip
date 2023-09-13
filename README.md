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

- tunnel xorg with proxychains startx
- tunnel using tun commend
- tunnel with sing-box

# proxy
you can proxy every protocols.

even proxy **openvpn** and **wireguard** using docker.

# the single-file
it's bash script that use shar (an abbreviation of shell archive),

for example **tor** have a binary, that binary will archive the single-file so you don't need tor anymore.

or sing-box

or v2ray-core

or openvpn-client

or ...

you need just the reip single-file!

# DO NOT INSTALL!
the only thing you'll need is just this single-file and nothing more(every client is in the file)

# commends
>reip set vless://... PROFILE
>
>reip PROFILE
>
>reip del PROFILE
>
>reip deamon
>sudo systemctl enable reip
>reip deamon PROFILE
>
>reip proxy PROFILE
>reip tun PROFILE
>reip tun --Xorg PROFILE
>reip tun -s/--Sing-box PROFILE
>reip tun -v/--V2ray PROFILE
>
>reip convert vless://... file.json (sing-box config)
>
>reip chain PROFILE1 PROFILE2 PROFILE3
>
>reip export ./profiles
>reip clean (delete all the profiles added to reip)
>
>reip PROFILE telegram-desktop/firefox/...
>
>reip dns 1.1.1.1
>
>reip hotspot HotspotVPN Pass123! (using create_ap)
>
>ALL_YOU_NEED_<3



