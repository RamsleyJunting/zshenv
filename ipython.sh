#!/bin/bash
host_ip=$(ip addr | grep -oE "172.26.3.[0-9]{1,3}" | head -n1)
nohup jupyter-notebook --ip=$host_ip --port=19434 --notebook_dir=/home/liliang/workspace --no-browser > ipython.log 2>&1 &
