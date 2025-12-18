# NGINX Log Analyzer

A simple Bash script to analyze NGINX access logs and provide a summary of the most frequent requests, IP addresses, status codes, and user agents.

## 🚀 Features

The script parses your log files to provide the top 5 results for:
- **IP Addresses**: Identifies who is visiting your site most often.
- **Requested Paths**: Shows your most popular pages or endpoints.
- **HTTP Status Codes**: Quickly spot errors (404s, 500s) or successful hits (200s).
- **User Agents**: Understand what browsers or bots are accessing your server.

## 📋 Prerequisites

This script uses standard Linux utilities. Ensure you have the following installed (pre-installed on most Linux/macOS systems):
- `bash`
- `awk`
- `sort`
- `uniq`

## 🛠️ Installation & Usage

1. **Clone the repository or download the script:**

   git clone [https://github.com/Pasiduchamod/nginx-log-analyzer.git](https://github.com/Pasiduchamod/nginx-log-analyzer.git)
   cd nginx-log-analyzer



2. **Make the script executable:**

chmod +x nginx-log-analyzer.sh




3. **Run the script:**
Provide the path to your NGINX access log file as an argument:

./nginx-log-analyzer.sh /path/to/your/access.log





## 📊 Sample Output

Top IP addresses with the most requests:
    124 192.168.1.1
     89 10.0.0.5
    

Top 5 most requested paths:
    450 /index.html
    210 /api/v1/resource


Top 5 response status code:
    600 200
     35 404
 


## ⚙️ How It Works

The script leverages the power of `awk` for field extraction and pipe-based processing:

* It isolates specific fields (like the 9th column for status codes).
* Uses `uniq -c` to count occurrences.
* Uses `sort -nr` to rank them from highest to lowest.



*Created as a lightweight tool for system administrators and developers.*



Would you like me to generate a **LICENSE** file for your repository as well?
