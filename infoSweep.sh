#!/bin/bash
output="info.txt"
grab(){
        echo Kernel : `uname -a`
        echo Hostname: `hostname` 
        echo User: `whoami`
        printf "\nDrives:\n" 
        lsblk -a
        printf "\n USB Devices:\n " 
        lsusb 
        printf "\n PCI Devices:\n "
        lspci
        printf "\n Network Interfaces:\n "
        ifconfig -a
        printf "\n Listening Ports:\n "
        netstat -tulpn

}
helpa(){
                        echo "This is the help menu"
                        echo "Use -a to grab all info"
                        echo "Use -i to grab system info"
                        echo "Use -b to grab bash history"
                        echo "Use -o to specify output file"
}
grabBashHis(){
        echo "Bash History:"
        cat ~/.bash_history
}

while getopts "aiboh" OPTION
do
        case $OPTION in
                b)
                        grabBashHis
                        ;;
                o)
                        echo "The value of output is $OPTARG"
                        output=$OPTARG
                        echo $MYOPTF
                        ;;
                a)
                        grab
                        grabBashHis
                        ;;
                i)
                        grab
                        ;;
                h)
                        helpa
                        ;;
                \?)
                        echo "Used for the help menu"
                        ;;
        esac
done > $output
cat $output
