# Service metadata json format definition 
with example values

## http/https 
```json
{
	"id": 1,
	"port": 443,
	"target": "test.domain.cz",
	"timeout": 5,
	"method": "GET",
	"query": "?var1=value1&var2=value2",
	"postData": [
		{
			"name": "var1",
			"value": "value1"
		}
	],
	"extraHeaders": [
		{
			"name": "MyHeader",
			"value": "My Value"
		}		
	],
	"authEnabled": true,
	"authUsername": "admin",
	"authPassword": "adminPass",
	"contentCheckEnabled": true,
	"contentCheckString": "my_string",
	"allowedHttpStatusCodes": [
		200,
		201,
		403,
		404
	],
	"tlsSkipVerify": false,
	"tlsCheckCertificates": true,
	"tlsCertExpirationThreshold": 10,	  
}
```

* `requestId` is sha256 format
* `timeout` is in sec
* `tlsCertExpirationThreshold` is in days

## tcp
```json
{
	"id": 2,
	"target": "101.102.103.104",
	"port": 1234,
	"timeout": 5,	
}
```
* `timeout` is in sec

## icmp
```json
{
	"id": 2,
	"target": "101.102.103.104",
	"timeout": 2,	
}
```
* `timeout` is in sec
