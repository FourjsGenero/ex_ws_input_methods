
IMPORT FGL ex_ws_input_methods_client AS calc  -- As syntax is new to 4.01.02, remove and put longer module name in if used with earlier versions.
# above module generated with fglrestful -o ex_ws_input_methods_client.4gl "http://localhost:8091/ws/r/Calculator?openapi.json"

MAIN
    DEFINE wsstatus INTEGER
    DEFINE result INTEGER

    CALL calc.add_wsquery(1, 2) RETURNING wsstatus, result
    CALL display_result("GET-wsquery", wsstatus, 1+2, result)

    CALL calc.add_wsparam(3, 4) RETURNING wsstatus, result
    CALL display_result("GET-wsparam", wsstatus, 3+4, result)

    CALL calc.add_wsheader(5, 6) RETURNING wsstatus, result
    CALL display_result("GET-wsheader", wsstatus, 5+6, result)

    CALL calc.add_wscookie(7, 8) RETURNING wsstatus, result
    CALL display_result("GET-wscookie", wsstatus, 7+8, result)

    -- Note that 3 post methods could use s RECORD argument of the imported type
    CALL calc.add_wspost(9, 10) RETURNING wsstatus, result
    CALL display_result("POST", wsstatus, 9+10, result)

    CALL calc.add_wspost_wsmedia(11,12) RETURNING wsstatus, result
    CALL display_result("POST-media", wsstatus, 11+12, result)

    CALL calc.add_wspost_multipart(13,14) RETURNING wsstatus, result
    CALL display_result("POST-multipart", wsstatus, 13+14, result)
END MAIN

FUNCTION display_result(test_name STRING, wsstatus INTEGER, expected_result INTEGER, actual_result INTEGER)
    DISPLAY SFMT("Test=%1 wsstatus=%2 expected=%3 actual=%4 %5", test_name, wsstatus, expected_result, actual_result, IIF(wsstatus=0 AND expected_result=actual_result,"ok","!!! KO !!!"))
END FUNCTION
