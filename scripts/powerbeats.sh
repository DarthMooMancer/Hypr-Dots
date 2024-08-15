beats_mac="2C:33:61:D9:57:27"
beats_sink="bluez_output.2C_33_61_D9_57_27.a2dp_sink"

bluetoothctl power on
bluetoothctl connect $beats_mac
pactl set-default-sink $beats_sink
