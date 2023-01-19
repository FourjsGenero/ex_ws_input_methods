# ex_ws_input_methods
Example that shows different ways parameters can be sent to a web service function 

Execute and run the server program.  Then from command line using curl, execute the following example

curl "http://localhost:8091/ws/r/Calculator/Add_wsquery?x=1&y=2"
curl "http://localhost:8091/ws/r/Calculator/Add_wsparam/1/2"        
curl -H "x:1" -H "y:2" "http://localhost:8091/ws/r/Calculator/Add_wsheader"
curl -b "x=1; y=2" "http://localhost:8091/ws/r/Calculator/Add_wscookie"
curl -d '{"x":1, "y":2}' -H "Content-Type: application/json" -X POST "http://localhost:8091/ws/r/Calculator/Add_wspost"
curl -d "x=1&y=2" -H "Content-Type: application/x-www-form-urlencoded" -X POST "http://localhost:8091/ws/r/Calculator/Add_wspost_wsmedia"
curl -F x=1 -F y=2 -X POST "http://localhost:8091/ws/r/Calculator/Add_wspost_multipart"

They illustrate different methods of sending information to a Web Service.

First 4 use GET 
Last 3 use POST
