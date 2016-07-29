# libusb-pharo

This project provides binding to the libusb library for Pharo. We currently target Pharo 5 with the latest UFFI. There are no stable version yet.

## Install
The version of UFFI used is the latest to integrate latest fixes needed by this project. So there are dialogs asking you if you want to merge the new version of UFFI loaded with the one currently installed in your image that you have to accept.

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
LUContext withAllDevicesDo: [ :context :devices | "Play with devices..." ]
```

### Get more info about about a specific device

`TODO`

### Get a lsusb like output for a device printed in Transcript
```
LUContext withAllDevicesDo: [ :context :devices |
    | ps3Controller |
    context logLevelDebug.
    "Searching the ps3 controller using its vendor id and product id."
    ps3Controller := devices detect: [ :dev |
                            dev idVendor = 16r054c
                                and: [ dev idProduct = 16r0268 ] ].
    Transcript
        show: 'Bus ';
        show: (ps3Controller busNumber printPaddedWith: $0 to: 3 base: 10);
        show: ' Device ';
        show: (ps3Controller address printPaddedWith: $0 to: 3 base: 10);
        show: ': ID ';
        show: (ps3Controller idVendor printPaddedWith: $0 to: 4 base: 16);
        show: ':';
        show: (ps3Controller idProduct printPaddedWith: $0 to: 4 base: 16);
        space;
        show: ps3Controller manufacturerDescription;
        show: ps3Controller productDescription; cr ]
```

# HID layer
This repository also holds an implementation of the Human Interface Device protocol with a driver to be used with libusb binding.

## Install
This project uses gitfiletree's metadataless mode. This extension is not supported
by the version of metacello available in image yet. So you need to execute the
following code before actually loading this proejct:
```
Metacello new 
    baseline: 'Metacello'; 
    repository: 'github://dalehenrich/metacello-work:master/repository'; 
    get. 
Metacello new 
    baseline: 'Metacello'; 
    repository: 'github://dalehenrich/metacello-work:master/repository'; 
    onConflict: [:ex | ex allow]; 
    load 
```
Then, you can execute the following code:
```
Metacello new
    repository: 'github://tamerescrl/libusb-pharo/repository';
    baseline: 'HumanInterfaceDevice';
    load
```
You are now ready to use this project!

## Quick start
The following code gives you hints on how to use the HID layer.

If you use linux, the following command is probably available on your system:
```
$ lsusb
```

It will print the following output that shows multiple information about the
usb devices connected to the system. For the example we will take the vid:pid
of the `Linux Foundation 2.0 root hub` (`046d:c52f`).

```
Bus 004 Device 003: ID 045e:07a5 Microsoft Corp. Wireless Receiver 1461C
Bus 004 Device 002: ID 8087:0024 Intel Corp. Integrated Rate Matching Hub
Bus 004 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub
Bus 003 Device 001: ID 1d6b:0003 Linux Foundation 3.0 root hub
Bus 002 Device 002: ID 046d:c52f Logitech, Inc. Unifying Receiver
Bus 002 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub
Bus 001 Device 004: ID 058f:6366 Alcor Micro Corp. Multi Flash Reader
Bus 001 Device 003: ID 05c8:030d Cheng Uei Precision Industry Co., Ltd (Foxlink) 
Bus 001 Device 002: ID 8087:0024 Intel Corp. Integrated Rate Matching Hub
Bus 001 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub
                       ^    ^
                       vid  pid
```

Do not forget to replace **vid** and **pid** by those from your usb device in the following code: 

```
backend := HIDLibusbBackend vid: 16r046d pid: 16rc52f.

backend open.
backend takeDeviceControl.

"Get the report descriptor from the device or returns the one in cache if it has already be done."
reportDescriptor := backend reportDescriptor.

backend releaseDeviceControl.
backend close.
```
