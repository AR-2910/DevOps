#!/bin/bash

###################################
# Author: Abhinav

# Date: 5/2/24

# Description: This script monitors web page metrics including load time, HTTP status code, and content size.

# Version: v1
###################################

analyze_web_page(){

        read -p "Enter the URL to monitor: " url

        start_time=$(date +%s.%N) 

        content=$(curl -s "$url") 

        end_time=$(date +%s.%N)

        load_time=$(echo "$end_time - $start_time" | awk '{print int($1)}') 

        load_time_seconds=$((load_time / 1000000000))

        echo "Load Time: $load_time_seconds seconds"

        content_size=$(echo "$content" | wc -c) 

        echo "Content Size: $content_size bytes"

        http_status=$(curl -s -o /dev/null -w "%{http_code}" "$url")
        echo "HTTP Status: $http_status"    

}

analyze_web_page
