### Instructions
1. Make sure `dkms` and `curl` are installed
2. Copy repo contents to `/usr/src/ftdi_sio-1/`
3. Run `sudo dkms add -m ftdi_sio -v 1`
4. Run `sudo dkms build -m ftdi_sio -v 1`
5. Run `sudo dkms install -m ftdi_sio -v 1`
6. Restart or `rmmod ftdi_sio && modrpobe ftdi_sio`
7. Done
