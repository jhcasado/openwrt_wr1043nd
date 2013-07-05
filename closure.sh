#! /bin/bash
directory=$HOME/openwrt/TL-WR1043ND/attitude_adjustment/build_dir/target-mips_r2_uClibc-0.9.33.2/luci-0.11+svn9858/*
for file in $( find $directory -name '*.js' )
do
  echo $file
  java -jar compiler.jar --compilation_level=SIMPLE_OPTIMIZATIONS --js="$file" --js_output_file="$file-min.js"
  mv "$file-min.js" "$file"
done 