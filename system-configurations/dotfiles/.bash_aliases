alias rm="trashy"
alias cl="clear"
alias bd="cd ~/projects/autoware && colbu --cmake-args -DCMAKE_BUILD_TYPE=RelWithDebInfo -DCMAKE_EXPORT_COMPILE_COMMANDS=1"
alias soroh="source /opt/ros/humble/setup.bash" 
alias fuss="fusermount -u /home/golf/ssh_remote/"
alias auto="cd /home/golf/projects/autoware"
alias pro="cd /home/golf/projects"

alias gedit="gedit --new-window"

alias upp="sudo apt update && sudo apt dist-upgrade -y && sudo apt autoremove"

alias soii="source install/setup.bash"
alias autt="source /home/golf/projects/autoware/install/setup.bash"
alias miavv="source /home/golf/projects/miav/install/setup.bash"

alias colbu="colcon build --symlink-install "

alias colbu_rd="colbu --cmake-args -DCMAKE_BUILD_TYPE=RelWithDebInfo -DCMAKE_EXPORT_COMPILE_COMMANDS=1 "
alias colbu_r="colbu --cmake-args -DCMAKE_BUILD_TYPE=Release -DCMAKE_EXPORT_COMPILE_COMMANDS=1 "
alias colbu_d="colbu --cmake-args -DCMAKE_BUILD_TYPE=Debug -DCMAKE_EXPORT_COMPILE_COMMANDS=1 "

alias colbu_sel_rd="colbu_rd --packages-select "
alias colbu_sel_r="colbu_r --packages-select "
alias colbu_sel_d="colbu_d --packages-select "

alias colbu_upto_rd="colbu_rd --packages-up-to "
alias colbu_upto_r="colbu_r --packages-up-to "
alias colbu_upto_d="colbu_r --packages-up-to "

alias colbsr="colbu_sel_rd"
alias colbur="colbu_upto_rd"


alias rtl="ros2 topic list"
alias rte="ros2 topic echo"
alias rti="ros2 topic info --verbose"
alias rth="ros2 topic hz"
alias rbr="ros2 bag record"
alias rbp="ros2 bag play"
alias rnl="ros2 node list"
alias rni="ros2 node info"

alias imtocomp="ros2 run image_transport republish raw --ros-args --remap in:=/lucid_vision/camera_1/image_rect --ros-args --remap out:=/lucid_vision/camera_1/compressed"



alias acf="ament_clang_format --config /home/golf/projects/AutowareAuto/.clang-format --reformat"
alias au="ament_uncrustify --reformat"

alias humb_arm="docker run --rm -it -v /home/golf/projects/autoware_humble:/autoware ghcr.io/autowarefoundation/autoware-universe:humble-latest-arm64"

alias clean_ws="trashy install log && ls build/ --color=auto -a  | grep -xv -e '.idea' -e '.' -e '..' -e 'compile_commands.json' -e '.built_by' | sed 's/.*/\"build\/&\"/' | xargs -I{} bash -c 'trashy {}'"

clean_pkg () {
  find build install -maxdepth 1 -name ${1} | sed 's/.*/\"&\"/' | xargs -I{} bash -c 'trashy {}'
}

alias plug="cd ~/files/scripts/start_scripts && ./localization_error_plugin.sh && cd ~/"
alias joy="cd ~/files/scripts/start_scripts/joystick_scripts && ./joy_start.sh && cd ~/"
alias aw="cd ~/files/scripts/start_scripts && ./aw_launch.sh && cd ~/"
alias vcu="cd ~/files/scripts/start_scripts && ./vcu_driver.sh && cd ~/"
alias cont="cd ~/files/scripts/start_scripts && ./pointcloud_container.sh && cd ~/"
alias rtk="cd ~/files/scripts/start_scripts && ./ntrip_client.sh && cd ~/"
alias raw="cd ~/files/scripts/start_scripts && ./raw_vehicle.sh && cd ~/"
alias start="cd ~/files/scripts/start_scripts && ./start.sh && cd ~/"


alias pisi="~/files/scripts/miav_scripts/start.sh"

