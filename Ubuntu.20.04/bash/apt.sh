#!/bin/bash

set -e
set -x

# Prevents popup questions
export DEBIAN_FRONTEND="noninteractive"

sudo apt-get update -y
sudo apt-get upgrade -y
