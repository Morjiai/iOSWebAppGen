#!/bin/bash
if 
[ `builtin type -p unzip` ]; then echo "Everything needed to use this program is installed! Moving on.."; else sudo apt-get install unzip;
fi
echo -ne '#####                     (33%)\r'
sleep 1
mkdir app 
cd app
wget https://github.com/nolimits4web/Framework7/archive/v1.4.2.zip
echo -ne '#############             (66%)\r'
sleep 1
unzip 1.4.2.zip -d app
rm -rf v1.4.2.zip
echo -ne '#######################   (100%)\r'
echo -ne '\n'
read -r -p "Would you like to install Open-Source-M-Repositories? By ColeSchaefer [y/N] " response
case $response in
    [yY][eE][sS]|[yY]) 
       wget https://github.com/ColeSchaefer/Open-Source-M-Repositories/archive/master.zip && unzip master.zip -d app && rm -rf master.zip
        
        ;;
    *)
        echo "Done!";
        ;;
esac

