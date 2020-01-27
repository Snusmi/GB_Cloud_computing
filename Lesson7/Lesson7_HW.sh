aglasis@LAPTOP-C0OP46FS:~$ ll
total 28
drwxr-xr-x 1 aglasis aglasis  4096 Jan 19 20:21 ./
drwxr-xr-x 1 root    root     4096 Dec 22 21:21 ../
-rw------- 1 aglasis aglasis  2302 Jan 19 20:26 .bash_history
-rw-r--r-- 1 aglasis aglasis   220 Dec 17 20:11 .bash_logout
-rw-r--r-- 1 aglasis aglasis  3771 Dec 17 20:11 .bashrc
drwx------ 1 aglasis aglasis  4096 Dec 22 21:15 .cache/
drwx------ 1 aglasis aglasis  4096 Dec 22 21:15 .config/
-rw------- 1 aglasis aglasis 12288 Dec 17 20:53 .lesson3_python.py.swp
drwx------ 1 aglasis aglasis  4096 Dec 22 21:15 .local/
-rw-r--r-- 1 aglasis aglasis   807 Dec 17 20:11 .profile
-rw-r--r-- 1 aglasis aglasis     0 Dec 17 20:11 .sudo_as_admin_successful
-rw------- 1 aglasis aglasis  2811 Dec 22 21:11 .viminfo
-rw-rw-rw- 1 aglasis aglasis    56 Jan 19 20:07 cat
-rw-rw-rw- 1 aglasis aglasis     0 Jan 19 20:13 grep
-rw-rw-rw- 1 aglasis aglasis    64 Dec 22 21:13 hello.py
-rw-rw-rw- 1 aglasis aglasis    27 Dec 17 21:02 linear.py
-rw-rw-rw- 1 aglasis aglasis     8 Jan 19 19:55 numbers.py
-rw-rw-rw- 1 aglasis aglasis     8 Jan 19 20:00 numbers.txt
-rw-rw-rw- 1 aglasis aglasis    50 Dec 17 21:03 result.py
-rw-rw-rw- 1 aglasis aglasis     0 Jan 19 20:21 sed
-rw-rw-rw- 1 aglasis aglasis     5 Jan 19 20:00 some_file.csv
-rw-rw-rw- 1 aglasis aglasis     5 Jan 19 19:55 test.py
-rw-rw-rw- 1 aglasis aglasis     5 Jan 19 19:55 text.py
-rw-rw-rw- 1 aglasis aglasis     5 Jan 19 19:59 text.txt
aglasis@LAPTOP-C0OP46FS:~$ ls
cat  grep  hello.py  linear.py  numbers.py  numbers.txt  result.py  sed  some_file.csv  test.py  text.py  text.txt
aglasis@LAPTOP-C0OP46FS:~$ ls | grep '^t.*\.py$'
test.py
text.py
aglasis@LAPTOP-C0OP46FS:~$ cat *py | grep 'print'
print("Hello, world!")
print("This line was added by new_user")
print("Linear regression")
print("Hello, world!")
print("Linear regression")
aglasis@LAPTOP-C0OP46FS:~$ uptime | sed 's/^.* up \+\(.\+\), \+[0-9]\+ \+user.*/\1/'
1 min
aglasis@LAPTOP-C0OP46FS:~$