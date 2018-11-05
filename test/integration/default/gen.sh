#!/usr/bin/env bash

pkg="mysql-server"

for p in ${pkg} ; do echo "describe package('${p}') do
  it { should be_installed }
end
"
done
