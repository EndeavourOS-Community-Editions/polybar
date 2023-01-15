#!/usr/bin/python

import imaplib
obj = imaplib.IMAP4_SSL('imap-mail.outlook.com',993)
obj.login('youremail','yourpassword')
obj.select()
number = len(obj.search(None, 'UnSeen')[1][0].split())
if number>0:
    print(number)
else:
    print('')
