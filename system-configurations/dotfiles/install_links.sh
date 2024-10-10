#!/usr/bin/env bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

create_symlink_if_not_exists() {
    PATH_SRC=$1
    PATH_DST=$2
    echo "Attempting to create symlink from $PATH_SRC to $PATH_DST"
    if [ ! -f $PATH_DST ] && [ ! -d $PATH_DST ]; then
        echo "Creating..."
        ln -s $PATH_SRC $PATH_DST
    else
        echo "File/Directory found at $PATH_DST"
        echo "Won't do anything."
    fi
    echo ""
}

USER_NAME="golf"

create_symlink_if_not_exists "$SCRIPT_DIR/.bash_aliases" "/home/$USER_NAME/.bash_aliases"

create_symlink_if_not_exists "$SCRIPT_DIR/cyclonedds.xml" "/home/$USER_NAME/cyclonedds.xml"

create_symlink_if_not_exists "$SCRIPT_DIR/.bashrc" "/home/$USER_NAME/.bashrc"

create_symlink_if_not_exists "$SCRIPT_DIR/.i3blocks.conf" "/home/$USER_NAME/.i3blocks.conf"

create_symlink_if_not_exists "$SCRIPT_DIR/.config/dunst" "/home/$USER_NAME/.config/dunst"

create_symlink_if_not_exists "$SCRIPT_DIR/.config/i3" "/home/$USER_NAME/.config/i3"

create_symlink_if_not_exists "$SCRIPT_DIR/.config/rofi" "/home/$USER_NAME/.config/rofi"

create_symlink_if_not_exists "$SCRIPT_DIR/local-ntp-server.sources" "/etc/chrony/sources.d/local-ntp-server.sources"

# create phc2sys-*.service for hardware clock of PCIe ports (PoE cameras)
create_symlink_if_not_exists "$SCRIPT_DIR/service_files/phc2sys-1.service" "/etc/systemd/system/phc2sys-1.service"
create_symlink_if_not_exists "$SCRIPT_DIR/service_files/phc2sys-2.service" "/etc/systemd/system/phc2sys-2.service"
create_symlink_if_not_exists "$SCRIPT_DIR/service_files/phc2sys-3.service" "/etc/systemd/system/phc2sys-3.service"
create_symlink_if_not_exists "$SCRIPT_DIR/service_files/phc2sys-4.service" "/etc/systemd/system/phc2sys-4.service"
create_symlink_if_not_exists "$SCRIPT_DIR/service_files/phc2sys-5.service" "/etc/systemd/system/phc2sys-5.service"
create_symlink_if_not_exists "$SCRIPT_DIR/service_files/phc2sys-6.service" "/etc/systemd/system/phc2sys-6.service"
create_symlink_if_not_exists "$SCRIPT_DIR/service_files/phc2sys-7.service" "/etc/systemd/system/phc2sys-7.service"

# create ptp-camera*.service for PTP of PCIe ports (PoE cameras)
create_symlink_if_not_exists "$SCRIPT_DIR/service_files/ptp-camera0.service" "/etc/systemd/system/ptp-camera0.service"
create_symlink_if_not_exists "$SCRIPT_DIR/service_files/ptp-camera1.service" "/etc/systemd/system/ptp-camera1.service"
create_symlink_if_not_exists "$SCRIPT_DIR/service_files/ptp-camera2.service" "/etc/systemd/system/ptp-camera2.service"
create_symlink_if_not_exists "$SCRIPT_DIR/service_files/ptp-camera3.service" "/etc/systemd/system/ptp-camera3.service"
create_symlink_if_not_exists "$SCRIPT_DIR/service_files/ptp-camera4.service" "/etc/systemd/system/ptp-camera4.service"
create_symlink_if_not_exists "$SCRIPT_DIR/service_files/ptp-camera5.service" "/etc/systemd/system/ptp-camera5.service"
create_symlink_if_not_exists "$SCRIPT_DIR/service_files/ptp-camera6.service" "/etc/systemd/system/ptp-camera6.service"
create_symlink_if_not_exists "$SCRIPT_DIR/service_files/ptp-camera7.service" "/etc/systemd/system/ptp-camera7.service"

# create can0_set.service for run can0_set.sh
create_symlink_if_not_exists "$SCRIPT_DIR/service_files/can0_set.service" "/etc/systemd/system/can0_set.service"
# create can0_set.sh for setting can type, bitrate, can status
create_symlink_if_not_exists "$SCRIPT_DIR/scripts/can0_set.sh" "/root/.scripts/can0_set.sh"

# create multicast.service for run multicast.sh
create_symlink_if_not_exists "$SCRIPT_DIR/service_files/multicast.service" "/etc/systemd/system/multicast.service"
# create multicast.sh for setting multicast on lo interface
create_symlink_if_not_exists "$SCRIPT_DIR/scripts/multicast.sh" "/root/.scripts/multicast.sh"

# create usb_permission.service for run usb_permission.sh
create_symlink_if_not_exists "$SCRIPT_DIR/service_files/usb_permission.service" "/etc/systemd/system/usb_permission.service"
# create usb_permission.sh for give permission to GNSS/INS USB devices
create_symlink_if_not_exists "$SCRIPT_DIR/scripts/usb_permission.sh" "/root/.scripts/usb_permission.sh"
