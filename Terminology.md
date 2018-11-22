# Terminology
Describe critical terms that will be often used to describe components, details or specification in the project.




# List
* `check` - one specific executed request to target used for monitoring service defined by check metada and check result
* `check result` - the result of specific check including status (success or failure), response time and any other additional data depending on check type
* `check metadata` -  that means type (TCP,HTTP, ICMP ...),  target (IP or DNS), timeout (ie: 5s) and any other additional data
* `check definition` - check metada including info about the customer 
* `check interval` - define interval in which specific check will be executed (ie: every 10s, every 30s, every 2m ...)
* `check interval group` - all checks in database that are in same check interval category ( all checks that should run every 30s ..)
