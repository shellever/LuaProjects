#!/bin/bash

# /usr/bin/lua -> /usr/local/bin/lua
LUA_PATH=`which lua`
for file in `find . -type f -name *.lua`; do
    sed -i s%#!/usr/bin/lua%#!/usr/local/bin/lua%g $file
done
