# add timestamp
Header header

# types of request CONSTANTS
uint8 BRDCST = 1
uint8 UNICST = 2
uint8 PINGID = 3
uint8 VOLTID = 4
uint8 CHNGID = 5
uint8 STATUS = 6
uint8 UNICSTACK = 7
uint8 TESTMSG = 8
uint8 ECHOMSG = 9
uint8 QUALITY = 10

# type of the message
uint8 msg_type

# raw message array
uint8[] msg

# id (0 - 255 valid address, -1 unknown used for incomming message)
int16 id

# range acquired from acoustic modem
float64 range