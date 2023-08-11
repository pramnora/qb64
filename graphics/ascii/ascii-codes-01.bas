Cls

'*** print all 'numbers' from: 0-9...

For intNumbers% = 0 To 9 '...ASCII nos: 49-57
    Print Chr$(intNumbers% + 48);
Next

Print '...print a vertical blank line...

'*** print all 'upper case' letters: A-Z...

For intUpperCaseAlphabetNos% = 1 To 26 '...ASCII nos: 65-90
    Print Chr$(intUpperCaseAlphabetNos% + 64);
Next

Print '...print a vertical blank line...

'*** print all 'lower case' letters: a-z...

For intLowerCaseAlphabetNos% = 1 To 26 '...ASCII Nos: 97-122
    Print Chr$(intLowerCaseAlphabetNos% + 96);
Next

Print '...print a vertical blank line...

'*** Test character range...

Print Chr$(49) + " - " + Chr$(57) ' 0 - 9
Print Chr$(65) + " - " + Chr$(90) ' A - Z
Print Chr$(97) + " - " + Chr$(122) ' a - z

