#!/bin/bash

read -p "enter age:: " age
[[ $age -ge 18 ]] && echo "you are Adult now" || echo "minor"


# explanation- if first condition is true than first statement will executed otherwise second