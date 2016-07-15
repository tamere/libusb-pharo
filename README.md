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
```
Metacello new
    repository: 'github://tamerescrl/libusb-pharo/repository';
    baseline: 'HumanInterfaceDevice';
    load

```

## Quick start
The following code gives you hints on how to use the HID layer.

Do not forget to replace **vid** and **pid** by those from your usb device (use `lsusb` if you use linux).
```
backend := HIDBackend libusb vid: 16r1efb pid: 16r1590.
                
backend open.
backend takeDeviceControl.


rawReport := backend getDescriptorWithType: HIDBackend LIBUSB_DT_REPORT index: 0.

hidObjects := HIDReportDescriptorParser parse: rawReport readStream.


backend releaseDeviceControl.
backend close
```
