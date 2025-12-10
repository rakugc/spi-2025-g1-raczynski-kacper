#!/bin/bash
sed '/kot/{
i poniższy wiersz został zmodyfikowany:
s/kot/pies/g
}' "$1"
