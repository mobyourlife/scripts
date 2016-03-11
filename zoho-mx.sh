#!/bin/bash

set -e

azure network dns record-set create mobyourlife $1 @ MX --ttl 3600

azure network dns record-set add-record mobyourlife $1 @ MX -e mx.zoho.com -f 10
azure network dns record-set add-record mobyourlife $1 @ MX -e mx2.zoho.com -f 20

azure network dns record-set show mobyourlife $1 @ MX

