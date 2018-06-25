#!/bin/sh
NOW=`date '+%Y%m%d_%H%M%S'`
echo "It is $(LANG=en_us_88591; date)" > /data/date_${NOW}.txt

