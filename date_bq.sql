-- MANIPULATE WITH DATE TIPE
------EXTRACT THE PART FROM A DATETIME
SELECT  EXTRACT (MONTH from collname),
EXTRACT (DAY from collname)
EXTRACT (WEEK from collname)
EXTRACT (WEEKDAY from collname)
EXTRACT (ISOWEEK from collname)
EXTRACT (QUARTER from collname)
EXTRACT (YEAR from collname)
EXTRACT (ISOYEAR from collname)
EXTRACT (MICROSECOND from collname)
EXTRACT (MILLISECOND from collname)
EXTRACT (SECOND from collname)
EXTRACT (HOUR from collname)
FROM `my-project` 
------EXTRACT THE DATE FROM A DATETIME 
SELECT DATE (collname),
FROM `my-project`
------CHANGE THE DATA FORMAT
SELECT FORMAT_DATETIME ("%d-%b-%y", started_at),
FROM `my-project`
-----------------------%E4Y-%m-%d
-----------------------%A	The full weekday name.	Wednesday
-----------------------%a	The abbreviated weekday name.	Wed
-----------------------%B	The full month name.	January
-----------------------%b or %h	The abbreviated month name.	Jan
-----------------------%C	The century (a year divided by 100 and truncated to an integer) as a decimal number (00-99).	20
-----------------------%c	The date and time representation.	Wed Jan 20 21:47:00 2021
-----------------------%D	The date in the format %m/%d/%y.	01/20/21
-----------------------%d	The day of the month as a decimal number (01-31).	20
-----------------------%e	The day of month as a decimal number (1-31); single digits are preceded by a space.	20
-----------------------%F	The date in the format %Y-%m-%d.	2021-01-20
-----------------------%G	The ISO 8601 year with century as a decimal number. Each ISO year begins on the Monday before the first Thursday of the Gregorian calendar year. Note that %G and %Y may produce different results near Gregorian year boundaries, where the Gregorian year and ISO year can diverge.	2021
-----------------------%g	The ISO 8601 year without century as a decimal number (00-99). Each ISO year begins on the Monday before the first Thursday of the Gregorian calendar year. Note that %g and %y may produce different results near Gregorian year boundaries, where the Gregorian year and ISO year can diverge.	21
-----------------------%H	The hour (24-hour clock) as a decimal number (00-23).	21
-----------------------%I	The hour (12-hour clock) as a decimal number (01-12).	09
-----------------------%j	The day of the year as a decimal number (001-366).	020
-----------------------%k	The hour (24-hour clock) as a decimal number (0-23); single digits are preceded by a space.	21
-----------------------%l	The hour (12-hour clock) as a decimal number (1-12); single digits are preceded by a space.	9
-----------------------%M	The minute as a decimal number (00-59).
-----------------------%m	The month as a decimal number (01-12).	01
-----------------------%n	A newline character.	
-----------------------%P	Either am or pm.	pm
-----------------------%p	Either AM or PM.	PM
-----------------------%Q	The quarter as a decimal number (1-4).	1
-----------------------%R	The time in the format %H:%M.	21:47
-----------------------%r	The 12-hour clock time using AM/PM notation.	09:47:00 PM
-----------------------%S	The second as a decimal number (00-60).	00
-----------------------%s	The number of seconds since 1970-01-01 00:00:00. Always overrides all other format elements, independent of where %s appears in the string. If multiple %s elements appear, then the last one takes precedence.	1611179220

------CONVERT STRING to DATE ex 01.05.2021(string) to date YYYY-MM-DD
SELECT PARSE_DATE('%d.%m.%Y',  collname),
FROM `my-project`
------DATE SUBSTRACTION also (year, quarter,month,dayofyear,day,week,hour,minute,second)
SELECT  DATE_DIFF(end.time,start.time,day) 
FROM `my-project`` 


