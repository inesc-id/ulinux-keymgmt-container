# uLinux Key Management Docker Container

This Docker container is responsible for mounting a new update image and
inserting the servers' CA certificate, device CA and image signing key into it.

## Preparations

Look into the `do.sh` file and change any relevant directories. Make sure you
create a `files/` folder that contains the required files.

## Usage

This container may be build by issuing the following command:

    # Make sure you cd into this folder first
    docker build -t keymgmt .

This container may be then run by running the following command:

    # Make sure you cd into this folder first
    IMAGE_PATH=[SOME IMAGE ABSOLUTE PATH]
    docker run --privileged=true -t -i -v $PWD/files:/opt/files/:ro -v $IMAGE_PATH:/opt/image.img keymgmt
