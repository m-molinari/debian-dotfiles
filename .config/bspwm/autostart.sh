#!/bin/bash

function run {
  if ! pgrep $1 ;
  then
    $@&
  fi
}

run volumeicon &
run setxkbmap it &
run setcursor &
run picom -CGb &

