#!/bin/sh

sensors k10temp-pci-00c3 -j | jq '.["k10temp-pci-00c3"]["Tctl"]["temp1_input"]'


