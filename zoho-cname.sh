#!/bin/sh

azure network dns record-set create mobyourlife $1 email CNAME --ttl 3600

azure network dns record-set add-record mobyourlife $1 email CNAME -c business.zoho.com

