#!/bin/bash
showmount -e "$1" | grep -E '\(|everyone\)'
