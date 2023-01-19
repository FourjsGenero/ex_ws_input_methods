
IMPORT FGL ex_ws_input_methods_client AS calc  -- As syntax is new to 4.01.02, remove and put longer module name in if used with earlier versions.
# above module generated with fglrestful -o ex_ws_input_methods_client.4gl "http://localhost:8091/ws/r/Calculator?openapi.json"

MAIN
    DEFINE wsstatus INTEGER
    DEFINE result INTEGER

    CALL calc.add_wsquery(1, 2) RETURNING wsstatus, result
    DISPLAY result

    CALL calc.add_wsparam(3, 4) RETURNING wsstatus, result
    DISPLAY result

    CALL calc.add_wsheader(5, 6) RETURNING wsstatus, result
    DISPLAY result

    CALL calc.add_wscookie(7, 8) RETURNING wsstatus, result
    DISPLAY result

    CALL calc.add_wspost(9, 10) RETURNING wsstatus, result
    DISPLAY result

    VAR p1 calc.postDataType
    LET p1.x = 11
    LET p1.y = 12
    CALL calc.add_wspost_wsmedia(p1) RETURNING wsstatus, result
    DISPLAY result

    VAR p2 calc.add_wspost_multipartMultipartRequest
    LET p2.x = 13
    LET p2.y = 14
    CALL calc.add_wspost_multipart(p2) RETURNING wsstatus, result
    DISPLAY result
END MAIN
