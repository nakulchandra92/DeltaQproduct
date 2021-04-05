#!/bin/bash

OUTPUT=$(dig +short myip.opendns.com @resolver1.opendns.com)
sed -i "s/machineip/$OUTPUT/" frontend/src/app/csvupload/csvupload.service.ts
