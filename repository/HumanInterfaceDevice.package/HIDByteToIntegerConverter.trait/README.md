I define methods to convert bytes to Pharo's integer.

According to the section 5.8 of HID spec:
Multibyte numeric values in reports are represented in little-endian format, with
the least significant byte at the lowest address. The Logical Minimum and Logical
Maximum values identify the range of values that will be found in a report. If
Logical Minimum and Logical Maximum are both positive values then a sign bit
is unnecessary in the report field and the contents of a field can be assumed to be
an unsigned value. Otherwise, all integer values are signed values represented in
2’s complement format. Floating point values are not allowed.