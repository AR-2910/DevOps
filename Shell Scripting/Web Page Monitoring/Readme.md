# Web Page Monitoring

This script monitors web page metrics including load time, HTTP status code, and content size.

## Used Commands
- `read`: Reads user input for the URL to monitor.
- `curl`: Fetches the content of the specified URL.
- `date`: Retrieves the current date and time to measure load time.
- `wc -c`: Counts the number of characters to calculate content size.
- `awk`: Performs arithmetic operations to convert nanoseconds to seconds.

## Error Handling
HTTP status code is used for additional error handling. For example, if the HTTP status code is not `200`, it indicates an error response from the server. The script can handle different HTTP status codes to identify various types of errors, such as server errors (5xx), client errors (4xx), or redirects (3xx).  

## Use Cases
- Monitoring website performance: Developers can use this script to monitor the performance of their websites and identify any issues affecting load time.
- Testing API endpoints: Testers can use this script to measure the response time of API endpoints and ensure they meet performance requirements.
- Web scraping: Researchers or data analysts can use this script to collect data from web pages and analyze trends over time.

## How to Use
Run the script by executing the following command in your terminal:
   `./Web_Monitoring.sh`
