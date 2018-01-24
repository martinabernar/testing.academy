#!/bin/bash

MEM =$(free | egrep MEM | awk '{print $1})
