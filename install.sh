#!/bin/bash

gcc -std=gnu99 -o kbdusb kbdusb.c &&\
sudo cp kbdusb /usr/local/bin/. &&\
sudo cp hp_keyboard.sh /usr/local/bin/. &&\
sudo cp hp_keyboard.service /etc/systemd/system/. &&\
sudo systemctl enable hp_keyboard.service &&\
sudo systemctl start hp_keyboard.service
