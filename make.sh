#!/bin/bash
if [ `builtin type -p unzip` ]; then echo "Everything needed to use this program is installed! Moving on.."; else sudo apt-get install unzip; fi
echo "Making"
mkdir app 
wget https://github.com/nolimits4web/Framework7/archive/v1.4.2.zip
unzip 1.4.2.zip -d app
cd app/Framework7-1.4.2
mv ../Framework7-1.4.2/* ../
rm -rf Framework7-1.4.2
rm -rf v1.4.2.zip
read -r -p "Would you like to install Open-Source-M-Repositories? By ColeSchaefer [y/N] " response
case $response in
    [yY][eE][sS]|[yY]) 
       cd ../ && https://github.com/ColeSchaefer/Open-Source-M-Repositories/archive/master.zip && unzip master.zip -d app && rm -rf master.zip
        
        ;;
    *)
        echo "Done!";
        ;;
esac
