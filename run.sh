#!/usr/bin/env bash

# get sage path to run sage directly
source ./path.env

# get git branch commits info
sh get_git_info.sh

# generate test_cases
sage ./test_scripts/generate_test_cases

# determine submodule branch/algorithm
sbatch  ./test_scripts/SLURM-faster-subadditivity-test.sage
