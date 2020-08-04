#!/usr/bin/env bash
licenses_file="$1"
set -ex
./gradlew generateLicenseReport
sort -u ./build/reports/dependency-license/licenses.csv >> "${licenses_file}"
