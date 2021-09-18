#!/bin/bash
for i in ${XDG_CONFIG_HOME:-$HOME/.config}/profile/*; do . "$i"; done
