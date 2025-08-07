#!/usr/bin/env sh

random_str=$(tr -dc 'A-Za-z0-9' </dev/urandom | head -c 14)
random_path="/$random_str"

md5=$(echo -n "$random_path" | md5sum | awk '{print $1}')
uuid="${md5:0:8}-${md5:8:4}-${md5:12:4}-${md5:16:4}-${md5:20:12}"

echo "==============================================="
echo "🚀 Random Path & UUID Generator"
echo "-----------------------------------------------"
echo "📁 Path : $random_path"
echo "🧬 UUID : $uuid"
echo "==============================================="
