#!/bin/bash

rm -rf tmp/cache/assets
rm -rf public/assets

rails assets:precompile
