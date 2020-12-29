#!/bin/bash

# Buttons
xsetwacom --set "Wacom Intuos BT S Pad pad" Button 1 "key tab"
xsetwacom --set "Wacom Intuos BT S Pad pad" Button 2 "key ctrl z"
xsetwacom --set "Wacom Intuos BT S Pad pad" Button 3 "key -"
xsetwacom --set "Wacom Intuos BT S Pad pad" Button 8 "key +"

# Screen mapping
xsetwacom set "Wacom Intuos BT S Pen stylus" MapToOutput DisplayPort-0
xsetwacom set "Wacom Intuos BT S Pen stylus" Area 0 0 15200 8550
xsetwacom set "Wacom Intuos BT S Pen eraser" Area 0 0 15200 8550
xsetwacom set "Wacom Intuos BT S Pen cursor" Area 0 0 15200 8550
# xsetwacom set "Wacom Intuos BT S Pen eraser" Area 0 0 15200 8550
# xsetwacom set "Wacom Intuos BT S Pen cursor" Area 0 0 15200 8550

