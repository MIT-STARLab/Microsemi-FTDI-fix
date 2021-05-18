#!/bin/bash
kernel=$(uname -r | awk -F '.' '{print "v"$1"."$2;}')

echo "Downloading latest driver for kernel $kernel..."
curl -sOJ "https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/plain/drivers/usb/serial/ftdi_sio.h?h=$kernel"
curl -sOJ "https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/plain/drivers/usb/serial/ftdi_sio_ids.h?h=$kernel"
curl -sOJ "https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/plain/drivers/usb/serial/ftdi_sio.c?h=$kernel"

echo "Applying patch..."
patch ftdi_sio.c fix.patch
