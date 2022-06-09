#!/bin/bash
#
#

DATA_DIR=/media/jorrit/tamias/preston/preston-archive/data

find "$DATA_DIR"\
| grep -o -P '[a-f0-9]{64}$'\
| sed 's+^+<foo:bar> <http://purl.org/pav/hasVersion> <hash://sha256/+g'\
| sed 's+$+> .+g'\
| preston dwc-stream --data-dir "$DATA_DIR"\
| grep StillImage\
| jq --compact-output '{ "from" : .["http://www.w3.org/ns/prov#wasDerivedFrom"], "id" : .["http://rs.tdwg.org/dwc/text/id"]}'

