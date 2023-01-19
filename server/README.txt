#Use these curl commands at the command line to see different ways parameters can be passed
curl "http://localhost:8091/ws/r/Calculator?openapi.json"
curl "http://localhost:8091/ws/r/Calculator/Add_wsquery?x=1&y=2"
curl "http://localhost:8091/ws/r/Calculator/Add_wsparam/1/2"        
curl -H "x:1" -H "y:2" "http://localhost:8091/ws/r/Calculator/Add_wsheader"
curl -b "x=1; y=2" "http://localhost:8091/ws/r/Calculator/Add_wscookie"
curl -d '{"x":1, "y":2}' -H "Content-Type: application/json" -X POST "http://localhost:8091/ws/r/Calculator/Add_wspost"
curl -d "x=1&y=2" -H "Content-Type: application/x-www-form-urlencoded" -X POST "http://localhost:8091/ws/r/Calculator/Add_wspost_wsmedia"
curl -F x=1 -F y=2 -X POST "http://localhost:8091/ws/r/Calculator/Add_wspost_multipart"
