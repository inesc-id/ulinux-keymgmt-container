#!/bin/bash

FILES_FOLDER=/opt/files
DEVICE_CA=$FILES_FOLDER/device_ca
DEVICE_CA_DEST=/opt/device_ca
SERVER_CACERT=$FILES_FOLDER/servers_ca.crt
SERVER_CACERT_DEST=/opt/ulinux-device-daemon/servers_ca.crt
SIGN_KEY_FILE=$FILES_FOLDER/signing_pubkey.key
SIGN_KEY_FILE_DEST=/opt/ulinux-device-daemon/signing_pubkey.key

IMAGE=/opt/image.img

# DO NOT EDIT BELOW THIS LINE

mount ${IMAGE} /mnt/

cp -r ${DEVICE_CA} /mnt/${DEVICE_CA_DEST}
cp ${SERVER_CACERT} /mnt/${SERVER_CACERT_DEST}
cp ${SIGN_KEY_FILE} /mnt/${SIGN_KEY_FILE_DEST}

umount /mnt/
