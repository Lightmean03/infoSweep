# infoSweep
### Auther: Lightmean
## Description

`infoSweep` is a Bash script designed to gather basic information from a computer. It is a work in progress and aims to provide insights into various system aspects.

## Usage

`bash`
./infoSweep [OPTIONS]

## Options

- **`-a`:** Grab all available information (system info, bash history).
- **`-i`:** Grab system information only.
- **`-b`:** Grab bash history only.
- **`-o [FILENAME]`:** Specify the output file. Default is `info.txt`.
- **`-h`:** Display the help menu.

## Examples

**Grab all information and save to a file:**

`./infoSweep -a -o output.txt`

**Grab system information only:**
`./infoSweep -i`

**Display help menu:**
`./infoSweep -h`

## Information Gathered

- **Kernel:** Displays kernel information.
- **Hostname:** Displays the hostname of the machine.
- **User:** Displays the current username.
- **Drives:** Lists all drives using `lsblk`.
- **USB Devices:** Lists USB devices using `lsusb`.
- **PCI Devices:** Lists PCI devices using `lspci`.
- **Network Interfaces:** Displays network interfaces using `ifconfig`.
- **Listening Ports:** Shows listening ports using `netstat`.

- **Bash History:** Displays the bash history if the `-b` option is used.

## Notes

- The output is saved to the specified file (default is `info.txt`).
- This script is a work in progress, and more features may be added in the future.




