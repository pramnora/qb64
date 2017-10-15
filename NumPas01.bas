'     --------------------------------
'***   PROGRAM: Password validation...
'     LANGUAGE: QB64
'     COMPUTER: PC/Windows 10
'     --------------------------------
'       AUTHOR: Mr. Paul Ramnora
'        EMAIL: pramnora@yahoo.com
'     LOCATION: UK/London
'     --------------------------------
'      CREATED: 131017 02:35 AM GMT
'      UPDATED: 131017 02:35 AM GMT
'     --------------------------------

'***  COMMENTS: This program checks if the user has typed in the right password;
'               If their password is wrong; then, they are given a temporary error message:
'               'Wrong password! Please, try, again..."
'               If their password is right; then, they are let in with a welcome message.
'               'Welcome back, again!'

'               This program is unusual in 2 ways...
'               1> The password is a number/(as opposed to being made up from the usual letters)
'               2> The password can be entered in a number of different ways...;
'                  -(which also means the password length isn't fixed/but, variable).

'               The user can enter their password as:
'               -> An explicit string: "10".

'               -> A mixture of numbers:
'               64(6+4=10)/or, 37(3+7=10)/091=(0+9+1)/
'               22242(2+2+2+4=10)/111115(1+1+1+1+1+5=10)/1111111111(1+1+1+1+1+1+1+1+1+1=10)

'               -> A mixture of uppercase/lowercase letters: a-z/A-Z;
'               which will be evaluated to become an ASCII encoded number ranging from:1-26;
'               DDB(uppercase: 4+4+2=10)
'               cfa(lowercase: 3+6+1=10)/
'               Fad(uppercase/lowercase: 6+1+4=10)

'               -> A MIXTURE of uppercase/lowercase letters/numbers...
'               1D5(uppercase)/or, 1d5(lowercase) = (1+4+5=10)

'               -> A mathematical expression
'               4*1+6/(=10)
'               NOTE: This last one still isn't quite finished, yet?!

strPassword$ = "10"
strUserGuess$ = ""

DO
    intSumTotal% = 0
    CLS
    PRINT "PROGRAM: Password validation"
    PRINT
    INPUT "Password"; strUserGuess$
    IF VAL(strUserGuess$) = 10 THEN 'check if user entered text string: "10"
        intSumTotal% = 10
    ELSE 'check if user entered a number amounting to: 10...
        FOR intEachChar% = 1 TO LEN(strUserGuess$)
            strEachChar$ = MID$(strUserGuess$, intEachChar%, 1)
            IF strEachChar$ >= "0" AND strEachChar$ <= "9" THEN '...check if a number: 0-9
                intSumTotal% = intSumTotal% + VAL(strEachChar$)
            ELSE 'check if user entered a letter: (a-z/A-Z = 1-26)...
                IF UCASE$(strEachChar$) >= "A" AND UCASE$(strEachChar$) <= "Z" THEN
                    intSumTotal% = intSumTotal% + ASC(UCASE$(strEachChar$)) - 64
                END IF
            END IF
        NEXT
    END IF
    IF intSumTotal% <> 10 THEN 'if NOT 10; then, print retry again message...
        PRINT
        PRINT intSumTotal%
        PRINT "Wrong password! Please, try, again..."
        SLEEP 1
    END IF
LOOP UNTIL intSumTotal% = 10

CLS
PRINT intSumTotal%
PRINT "Welcome back, again!"
END
