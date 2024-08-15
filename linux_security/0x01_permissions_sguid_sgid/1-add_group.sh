#!/bin/bash
sudo groupadd $1
sudo chown :$1 $2
sudo chmod 750 $2