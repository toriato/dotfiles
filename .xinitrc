#!/bin/bash
source ~/.profile
source ~/.xprofile

# 기본 모니터 끄기
# TODO: 호스트가 노트북이고 집 네트워크와 모니터(HDMI)에 연결됐을 때만 아래 명령어 실행하기
xrandr --output eDP-1 --off

exec i3
