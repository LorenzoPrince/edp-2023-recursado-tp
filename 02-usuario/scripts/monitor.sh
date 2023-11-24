#!/bin/bash

monitoreo() {
PID=1698
ps -p $PID -o %cpu,%mem
df -h
}
monitoreo
