# libusb-pharo

This project provides binding to the libusb library for Pharo. We currently target Pharo 5 with the latest UFFI. There are no stable version yet.

## Install

Execute the following code snippet to install the package:

~~~
Metacello new
    repository: 'github://tamerescrl/libusb-pharo/repository';
    baseline: 'LibUsb';
    load
~~~


## Quickstart

### Listing all the connected USB devices
```
context := LUContext new.
devices := LUDevice allDevicesForContext: context.
```

### Get more info about about a specific device

`TODO`
