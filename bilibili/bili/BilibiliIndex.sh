#!/bin/bash
export PATH=$PATH:/usr/loccal/bin
cd /root/WebCmdMining/bilibili/bili
kill -9 `ps -ef |grep AvIndex|awk '{print $2}' `
nohup scrapy crawl AvIndex >> ./log/AvIndex.log 2>&1 &
