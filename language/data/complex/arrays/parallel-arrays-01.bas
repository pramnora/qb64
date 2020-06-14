'*** This program demonstrates the use of 'parallel arrays'...;
'    which is a good technique to use whenever you wish to create 'look up' tables...;
'    basically, the data is arranged in pairs/and, also, is printed out in pairs.

maxNoOfRecords% =  3

DIM name$(maxNoOfRecords%), phoneNumber$(maxNoOfRecords%)

name$(1) = "Emergency"  : phoneNumber$(1) = "999"
name$(2) = "NHS"        : phoneNumber$(2) = "111"
name$(3) = "Samaritans" : phoneNumber$(3) = "08457 90 90 90"

CLS
PRINT "Phonebook"
PRINT
PRINT "Name","Number"
PRINT
FOR eachRecordNo% = 1 TO maxNoOfRecords%
  PRINT name$(eachRecordNo%),phoneNumber$(eachRecordNo%)
NEXT
END
