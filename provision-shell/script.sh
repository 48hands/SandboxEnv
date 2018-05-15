#!/bin/bash

sudo systemctl stop firewalld
sudo systemctl disable firewalld
sudo systemctl restart network
