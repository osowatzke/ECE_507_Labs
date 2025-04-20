#!/bin/bash
# Exit on errors
set -e

# Remove prior downloads
rm -rf downloads

# Create a fresh downloads folder
mkdir downloads

# Cleanup the lib folder if it exists if not create one
if [ -d lib ]; then
    rm -rf lib/HMC_Sheets_8ths
    rm -rf lib/muddlib11
    # Don't do anything about directories under CM
    # rm -rf lib/processor8
    # rm -rf lib/wordlib8
    rm -rf lib/UofU_TechLib_ami06
    rm -rf lib/UofU_Analog_Parts
    rm -rf lib/UofU_Example 
    rm -rf lib/UofU_Pads 
else
    mkdir lib
fi

cd downloads

# Setup HMC_Sheets_8ths (now contained in ECE-407-507_Updatedversion)
#wget https://pages.hmc.edu/harris/cmosvlsi/4e/cadencelabs/labs.tar.gz
#tar -xvf labs.tar.gz
#rm labs.tar.gz
#cp -r labs/lab2/HMC_Sheets_8ths ../lib/HMC_Sheets_8ths
#rm -rf labs

# Setup HMC_Sheets_8ths, muddlib11, and processor8
# Had to copy to another location to work around access issues
curl -L -o "ECE-407-507_Updatedversion.zip" "https://drive.usercontent.google.com/uc?id=1vOq9T0mhAQ3CzUymC4TBtcEVbzlm--Zz&export=download"
unzip ECE-407-507_Updatedversion.zip
rm -rf ECE-407-507_Updatedversion.zip
cp -rf ECE-407-507_Updatedversion/lab2/muddlib11 ../lib/muddlib11
cp -rf ECE-407-507_Updatedversion/lib/oa/HMC_Sheets_8ths ../lib/HMC_Sheets_8ths
# Directory now under CM
#cp -rf ECE-407-507_Updatedversion/lab2/processor8 ../lib/processor8
#cp -rf ECE-407-507_Updatedversion/lab2/wordlib8 ../lib/wordlib8
rm -rf ECE-407-507_Updatedversion

# Setup UofU_TechLib_ami06
wget "https://users.cs.utah.edu/~elb/cadbook/UofU/TechLib/OA/OATechLib.tar.gz"
mkdir -p OATechLib && tar -xvf OATechLib.tar.gz -C OATechLib
rm -rf OATechLib.tar.gz
cp -rf OATechLib/UofU_TechLib_ami06 ../lib/UofU_TechLib_ami06 
rm -rf OATechLib

# Setup UofU_Analog_Parts
wget "https://users.cs.utah.edu/~elb/cadbook/UofU/Analog_Parts/OA_UofU_Analog_Parts.tar.gz"
mkdir -p OA_UofU_Analog_Parts && tar -xvf OA_UofU_Analog_Parts.tar.gz -C OA_UofU_Analog_Parts
rm -rf OA_UofU_Analog_Parts.tar.gz
cp -rf OA_UofU_Analog_Parts/UofU_Analog_Parts ../lib/UofU_Analog_Parts 
rm -rf OA_UofU_Analog_Parts

# Setup UofU_Example
wget "https://users.cs.utah.edu/~elb/cadbook/UofU/Example/OA_UofU_Example.tar.gz"
mkdir -p OA_UofU_Example && tar -xvf OA_UofU_Example.tar.gz -C OA_UofU_Example
rm -rf OA_UofU_Example.tar.gz
cp -rf OA_UofU_Example/UofU_Example ../lib/UofU_Example 
rm -rf OA_UofU_Example

# Setup UofU_Pads
wget "https://users.cs.utah.edu/~elb/cadbook/UofU/Pads/OA_UofU_Pads.tar.gz"
mkdir -p OA_UofU_Pads && tar -xvf OA_UofU_Pads.tar.gz -C OA_UofU_Pads
rm -rf OA_UofU_Pads.tar.gz
cp -rf OA_UofU_Pads/UofU_Pads ../lib/UofU_Pads 
rm -rf OA_UofU_Pads

