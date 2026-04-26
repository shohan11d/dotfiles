#!/bin/bash

cp "$HOME/.config/hypr/conf/monitors-vertical.conf" "$HOME/config/hypr/monitors.conf"

hyprctl reload
