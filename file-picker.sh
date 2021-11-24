#!/bin/bash

find tips -type f | shuf -n 1 | xargs cat
