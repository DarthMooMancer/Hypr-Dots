#!/bin/bash

sh -c 'echo $(( $(cat /sys/class/backlight/amdgpu_bl0/brightness) - 5 )) > /sys/class/backlight/amdgpu_bl0/brightness'

