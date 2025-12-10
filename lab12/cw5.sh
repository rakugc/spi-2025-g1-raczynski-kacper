#!/bin/bash
sed '1,5w first
6,$w last' "$1"
