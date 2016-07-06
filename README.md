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

### Get a lsusb like device list printed in Transcript
```
LUContext withAllDevicesDo: [ :context :devices |
    | ps3Controller |
    context logLevelDebug.
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
