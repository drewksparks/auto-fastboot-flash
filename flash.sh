#!/bin/bash

echo "*****************************************"
echo "*CD INTO THE DIR WITH FILES & THIS FILE *"
echo "*        FASTBOOT MUST BE IN DIR        *"
echo "*                                       *"
echo "*PLEASE SAVE YOUR FILES AS THE FOLLOWING:"
echo "*            bootloader.img             *"
echo "*               boot.img                *"
echo "*             recovery.img              *"
echo "*              cache.img                *"
echo "*              system.img               *"
echo "*              vendor.img               *"
echo "*****************************************"
echo " "
echo "How would you like to install this image?"
PS3='Please enter your choice: '
options=("Normal Install" "TWRP Install" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "Normal Install")
echo "Would you like to wipe data?"
PS3='Please enter your choice:'
options=("Wipe all" "Wipe all excl USERDATA" "No wipe" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "Wipe all")
  sudo ./fastboot erase userdata
  sleep 3
  sudo ./fastboot erase boot
  sleep 3
  sudo ./fastboot erase recovery
  sleep 3
  sudo ./fastboot format system
  sleep 3
  sudo ./fastboot erase cache
  sleep 3
  sudo ./fastboot erase vendor
  sleep 3
sudo ./fastboot flash bootloader bootloader.img
sleep 3
echo "*************************"
echo "* BOOTLOADER FLASH DONE *"
echo "*************************"
sudo ./fastboot reboot-bootloader
sleep 10
sudo ./fastboot -w
sleep 20
sudo ./fastboot flash boot boot.img
echo "*************************"
echo "*    BOOT FLASH DONE    *"
echo "*************************"
sleep 5
sudo ./fastboot flash recovery recovery.img
echo "*************************"
echo "*  RECOVERY FLASH DONE  *"
echo "*************************"
sleep 5
sudo ./fastboot flash cache cache.img
echo "*************************"
echo "*    CACHE FLASH DONE   *"
echo "*************************"
sleep 5
sudo ./fastboot flash system system.img
echo "*************************"
echo "*   SYSTEM FLASH DONE   *"
echo "*************************"
sleep 5
sudo ./fastboot flash vendor vendor.img
echo "*************************"
echo "*   VENDOR FLASH DONE   *"
echo "*************************"
sleep 1
echo "******************"
echo "* Reboot Options *"
echo "******************"
PS3='Please enter your choice:'
options=("Reboot" "Recovery" "Bootloader" "No")
select opt in "${options[@]}"
do
    case $opt in
        "Reboot")
            sudo ./fastboot reboot
            sleep 5
            break
            ;;
        "Recovery")
            sudo ./fastboot reboot-recovery
            sleep 5
            break
            ;;
        "Bootloader")
            sudo ./fastboot reboot-bootloader
            sleep 5
            break
            ;;
        "No")
            break
            ;;
        *) echo invalid option;;
    esac
done
            ;;
        "Wipe all excl USERDATA")
  sudo ./fastboot erase boot
  sleep 3
  sudo ./fastboot erase recovery
  sleep 3
  sudo ./fastboot format system
  sleep 3
  sudo ./fastboot erase cache
  sleep 3
  sudo ./fastboot erase vendor
  sleep 3
sudo ./fastboot flash bootloader bootloader.img
echo "*************************"
echo "* BOOTLOADER FLASH DONE *"
echo "*************************"
sleep 3
sudo ./fastboot reboot-bootloader
sleep 10
sudo ./fastboot -w
sleep 20
sudo ./fastboot flash boot boot.img
echo "*************************"
echo "*    BOOT FLASH DONE    *"
echo "*************************"
sleep 5
sudo ./fastboot flash recovery recovery.img
echo "*************************"
echo "*  RECOVERY FLASH DONE  *"
echo "*************************"
sleep 2
sudo ./fastboot flash cache cache.img
echo "*************************"
echo "*    CACHE FLASH DONE   *"
echo "*************************"
sleep 5
sudo ./fastboot flash system system.img
echo "*************************"
echo "*   SYSTEM FLASH DONE   *"
echo "*************************"
sleep 5
sudo ./fastboot flash vendor vendor.img
echo "*************************"
echo "*   VENDOR FLASH DONE   *"
echo "*************************"
sleep 1
echo "******************"
echo "* Reboot Options *"
echo "******************"
PS3='Please enter your choice:'
options=("Reboot" "Recovery" "Bootloader" "No")
select opt in "${options[@]}"
do
    case $opt in
        "Reboot")
            sudo ./fastboot reboot
            sleep 5
            break
            ;;
        "Recovery")
            sudo ./fastboot reboot-recovery
            sleep 5
            break
            ;;
        "Bootloader")
            sudo ./fastboot reboot-bootloader
            sleep 5
            break
            ;;
        "No")
            break
            ;;
        *) echo invalid option;;
    esac
done
            ;;
        "No wipe")
sudo ./fastboot flash bootloader bootloader.img
echo "*************************"
echo "* BOOTLOADER FLASH DONE *"
echo "*************************"
sleep 3
sudo ./fastboot reboot-bootloader
sleep 10
sudo ./fastboot -w
sleep 20
sudo ./fastboot flash boot boot.img
echo "*************************"
echo "*    BOOT FLASH DONE    *"
echo "*************************"
sleep 5
sudo ./fastboot flash recovery recovery.img
echo "*************************"
echo "*  RECOVERY FLASH DONE  *"
echo "*************************"
sleep 2
sudo ./fastboot flash cache cache.img
echo "*************************"
echo "*    CACHE FLASH DONE   *"
echo "*************************"
sleep 5
sudo ./fastboot flash system system.img
echo "*************************"
echo "*   SYSTEM FLASH DONE   *"
echo "*************************"
sleep 5
sudo ./fastboot flash vendor vendor.img
echo "*************************"
echo "*   VENDOR FLASH DONE   *"
echo "*************************"
sleep 1
echo "******************"
echo "* Reboot Options *"
echo "******************"
PS3='Please enter your choice:'
options=("Reboot" "Recovery" "Bootloader" "No")
select opt in "${options[@]}"
do
    case $opt in
        "Reboot")
            sudo ./fastboot reboot
            sleep 5
            break
            ;;
        "Recovery")
            sudo ./fastboot reboot-recovery
            sleep 5
            break
            ;;
        "Bootloader")
            sudo ./fastboot reboot-bootloader
            sleep 5
            break
            ;;
        "No")
            break
            ;;
        *) echo invalid option;;
    esac
done
            ;;
        "Quit")
            break
            ;;
        *) echo invalid option;;
    esac
done

            ;;
        "TWRP Install")
        echo "********************************************"
        echo "*Please save TWRP as twrp.img in the folder*"
        echo "********************************************"
echo "Would you like to wipe data?"
PS3='Please enter your choice:'
options=("Wipe all" "Wipe all excl USERDATA" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "Wipe all")
  sudo ./fastboot erase userdata
  sleep 3
  sudo ./fastboot erase boot
  sleep 3
  sudo ./fastboot erase recovery
  sleep 3
  sudo ./fastboot format system
  sleep 3
  sudo ./fastboot erase cache
  sleep 3
  sudo ./fastboot erase vendor
  sleep 3
sudo ./fastboot flash bootloader bootloader.img
echo "*************************"
echo "* BOOTLOADER FLASH DONE *"
echo "*************************"
sleep 3
sudo ./fastboot reboot-bootloader
sleep 10
sudo ./fastboot -w
sleep 20
sudo ./fastboot flash boot boot.img
echo "*************************"
echo "*    BOOT FLASH DONE    *"
echo "*************************"
sleep 5
sudo ./fastboot flash recovery twrp.img
echo "*************************"
echo "*    TWRP FLASH DONE    *"
echo "*************************"
sleep 2
sudo ./fastboot flash cache cache.img
echo "*************************"
echo "*    CACHE FLASH DONE   *"
echo "*************************"
sleep 5
sudo ./fastboot flash system system.img
echo "*************************"
echo "*   SYSTEM FLASH DONE   *"
echo "*************************"
sleep 5
sudo ./fastboot flash vendor vendor.img
echo "*************************"
echo "*   VENDOR FLASH DONE   *"
echo "*************************"
sleep 1
echo "******************"
echo "* Reboot Options *"
echo "******************"
PS3='Please enter your choice:'
options=("Reboot" "Recovery" "Bootloader" "No")
select opt in "${options[@]}"
do
    case $opt in
        "Reboot")
            sudo ./fastboot reboot
            sleep 5
            break
            ;;
        "Recovery")
            sudo ./fastboot reboot-recovery
            sleep 5
            break
            ;;
        "Bootloader")
            sudo ./fastboot reboot-bootloader
            sleep 5
            break
            ;;
        "No")
            break
            ;;
        *) echo invalid option;;
    esac
done
            ;;
        "Wipe all excl USERDATA")
  sudo ./fastboot erase boot
  sleep 3
  sudo ./fastboot erase recovery
  sleep 3
  sudo ./fastboot format system
  sleep 3
  sudo ./fastboot erase cache
  echo "*************************"
echo "*    CACHE FLASH DONE   *"
echo "*************************"
  sleep 3
  sudo ./fastboot erase vendor
  sleep 3
sudo ./fastboot flash bootloader bootloader.img
echo "*************************"
echo "* BOOTLOADER FLASH DONE *"
echo "*************************"
sleep 3
sudo ./fastboot reboot-bootloader
sleep 10
sudo ./fastboot -w
sleep 20
sudo ./fastboot flash boot boot.img
echo "*************************"
echo "*    BOOT FLASH DONE    *"
echo "*************************"
sleep 5
sudo ./fastboot flash recovery twrp.img
echo "*************************"
echo "*    TWRP FLASH DONE    *"
echo "*************************"
sleep 5
sudo ./fastboot flash cache cache.img
echo "*************************"
echo "*    CACHE FLASH DONE   *"
echo "*************************"
sleep 5
sudo ./fastboot flash system system.img
echo "*************************"
echo "*   SYSTEM FLASH DONE   *"
echo "*************************"
sleep 5
sudo ./fastboot flash vendor vendor.img
echo "*************************"
echo "*   VENDOR FLASH DONE   *"
echo "*************************"
sleep 1
echo "******************"
echo "* Reboot Options *"
echo "******************"
PS3='Please enter your choice:'
options=("Reboot" "Recovery" "Bootloader" "No")
select opt in "${options[@]}"
do
    case $opt in
        "Reboot")
            sudo ./fastboot reboot
            sleep 5
            break
            ;;
        "Recovery")
            sudo ./fastboot reboot-recovery
            sleep 5
            break
            ;;
        "Bootloader")
            sudo ./fastboot reboot-bootloader
            sleep 5
            break
            ;;
        "No")
            break
            ;;
        *) echo invalid option;;
    esac
done
            ;;
        "Quit")
            break
            ;;
        *) echo invalid option;;
    esac
done
            ;;
        "Quit")
            break
            ;;
        *) echo invalid option;;
    esac
done
