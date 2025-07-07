#!/bin/bash

set -e

# Variables
SING_BOX_VERSION="1.9.0-beta.10"
V2RAY_CORE_VERSION="v5.15.0"
OPENVPN_VERSION="2.6.10"
WIREGUARD_TOOLS_VERSION="1.0.20210914"

# Create a temporary directory
TMP_DIR=$(mktemp -d)
echo "Created temporary directory: $TMP_DIR"

# Download and extract sing-box
echo "Downloading sing-box..."
wget -qO- "https://github.com/SagerNet/sing-box/releases/download/v${SING_BOX_VERSION}/sing-box-${SING_BOX_VERSION}-linux-amd64.tar.gz" | tar -xz -C "$TMP_DIR"
mv "$TMP_DIR/sing-box-${SING_BOX_VERSION}-linux-amd64/sing-box" "$TMP_DIR/"
rm -rf "$TMP_DIR/sing-box-${SING_BOX_VERSION}-linux-amd64"

# Download and extract v2ray-core
echo "Downloading v2ray-core..."
wget -qO- "https://github.com/v2fly/v2ray-core/releases/download/${V2RAY_CORE_VERSION}/v2ray-linux-64.zip" | busybox unzip -d "$TMP_DIR" -o -
mv "$TMP_DIR/v2ray" "$TMP_DIR/v2ray-core"

# Download and extract openvpn
echo "Downloading openvpn..."
wget -qO- "https://swupdate.openvpn.org/community/releases/openvpn-${OPENVPN_VERSION}.tar.gz" | tar -xz -C "$TMP_DIR"
# Note: OpenVPN needs to be compiled. This script assumes a pre-compiled binary is available.
# If not, you would need to add compilation steps here.
# For simplicity, we'll assume a pre-compiled binary is placed in the binaries directory.
# You would need to manually add the openvpn binary to the binaries directory.
# For example: cp /usr/sbin/openvpn "$TMP_DIR/"
if [ -f "binaries/openvpn" ]; then
    cp "binaries/openvpn" "$TMP_DIR/"
else
    echo "Warning: openvpn binary not found in binaries/ directory. The build will continue without it."
fi


# Download and extract wireguard-tools
echo "Downloading wireguard-tools..."
# Note: wireguard-tools also typically requires compilation.
# This script assumes a pre-compiled binary is available.
# You would need to manually add the wg binary to the binaries directory.
# For example: cp /usr/bin/wg "$TMP_DIR/"
if [ -f "binaries/wg" ]; then
    cp "binaries/wg" "$TMP_DIR/"
else
    echo "Warning: wg binary not found in binaries/ directory. The build will continue without it."
fi


# Copy the reip script to the temporary directory
cp reip "$TMP_DIR/"

# Create the self-extracting archive
echo "Creating reip self-extracting archive..."
makeself "$TMP_DIR" reip.run "reip - All the VPN clients in a single-file!" ./reip

# Clean up the temporary directory
rm -rf "$TMP_DIR"

echo "Build complete! Run ./reip.run to start."
