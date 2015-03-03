#!/bin/bash
COMBOS()
{
find vendor/commotio/products -name commotio_*.mk | while read FILE; do basename $FILE .mk | sed 's/commotio\_//g'; done
}
for x in `COMBOS | sort -h`; do
  ## I don't give a fuck above user and eng build.
  add_lunch_combo commotio_$x-userdebug
done
