#!/bin/bash

function capslock() {

  caps=$(xset -q | grep Caps | awk '{ print $4 }')

  if [ $caps == 'off' ]; then
    echo "%{T1}%{T-}"
  else
    echo "%{T1}בּ%{T-}"
  fi

}

function numlock {

  num=$(xset -q | grep Num | awk '{ print $8 }')

  if [ $num == 'off' ]; then
    echo "%{T1}NUM OFF%{T-}"
  else
    echo "%{T1}NUM ON%{T-}"
  fi

}

function scroll() {

  scroll=$(xset -q | grep Scroll | awk '{ print $12 }')

  if [ $scroll == 'off' ]; then
    echo "%{T1}%{T-}"
  else
    echo "%{T1}%{T-}"
fi

}

main () {

  if [ "$1" == "-c"  ]; then
    capslock
  fi

  if [ "$1" == "-n"  ]; then
    numlock
  fi

  if [ "$1" == "-s"  ]; then
    scroll
  fi

}
