#!/bin/sh

## Enter the path to the application bundle to check on, including the .app extension
appPath="/Applications/Motion.app"

## Get the LastUsedDate as reported by mdls
appLastUsedDate=$(mdls "$appPath" -name kMDItemLastUsedDate | awk '{print $3,$4}')


if [[ "$appLastUsedDate" != "not find" ]] && [[ "$appLastUsedDate" != "(null)" ]] && [[ ! -z "$appLastUsedDate" ]]; then
    result="$appLastUsedDate"
else
    result="2017-12-00 00:00:00"
fi

echo "<result>$result</result>"

exit 0