#!/usr/bin/env bash

ip link set can0 type can bitrate 500000 &
ip link set can0 up

