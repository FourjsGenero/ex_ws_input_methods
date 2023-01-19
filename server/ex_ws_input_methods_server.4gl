FUNCTION add_wsquery(x INTEGER ATTRIBUTES(WSQuery), y INTEGER ATTRIBUTES(WSQuery)) ATTRIBUTES(WSGet, WSPath = "/Add_wsquery")
    RETURNS INTEGER

    DEFINE z INTEGER

    LET z = x + y
    RETURN z
END FUNCTION

FUNCTION add_wsparam(x INTEGER ATTRIBUTES(WSParam), y INTEGER ATTRIBUTES(WSParam))
    ATTRIBUTES(WSGet, WSPath = "/Add_wsparam/{x}/{y}") RETURNS INTEGER

    DEFINE z INTEGER

    LET z = x + y
    RETURN z
END FUNCTION

FUNCTION add_wsheader(x INTEGER ATTRIBUTES(WSHeader), y INTEGER ATTRIBUTES(WSHeader)) ATTRIBUTES(WSGet, WSPath = "/Add_wsheader")
    RETURNS INTEGER

    DEFINE z INTEGER

    LET z = x + y
    RETURN z
END FUNCTION

FUNCTION add_wscookie(x INTEGER ATTRIBUTES(WSCookie), y INTEGER ATTRIBUTES(WSCookie)) ATTRIBUTES(WSGet, WSPath = "/Add_wscookie")
    RETURNS INTEGER

    DEFINE z INTEGER

    LET z = x + y
    RETURN z
END FUNCTION

TYPE postDataType RECORD
    x, y INTEGER
END RECORD

FUNCTION add_wspost(data postDataType) ATTRIBUTES(WSPost, WSPath = "/Add_wspost") RETURNS INTEGER

    DEFINE z INTEGER

    LET z = data.x + data.y
    RETURN z
END FUNCTION

FUNCTION add_wspost_wsmedia(data postDataType ATTRIBUTES(WSMedia = "application/x-www-form-urlencoded"))
    ATTRIBUTES(WSPost, WSPath = "/Add_wspost_wsmedia") RETURNS INTEGER

    DEFINE z INTEGER

    LET z = data.x + data.y
    RETURN z
END FUNCTION

FUNCTION add_wspost_multipart(x INTEGER, y INTEGER) ATTRIBUTES(WSPost, WSPath = "/Add_wspost_multipart") RETURNS INTEGER

    DEFINE z INTEGER
    LET z = x + y
    RETURN z
END FUNCTION
