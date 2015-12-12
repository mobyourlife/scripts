#!/bin/bash

set -e

azure network dns zone create -n $1 -g mobyourlife

azure network dns record-set create mobyourlife $1 www A --ttl 3600
azure network dns record-set create mobyourlife $1 @ A --ttl 3600

azure network dns record-set add-record mobyourlife $1 www A -a 23.102.185.116
azure network dns record-set add-record mobyourlife $1 @ A -a 23.102.185.116

azure network dns record-set show mobyourlife $1 @ NS

