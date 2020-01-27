# смотрю, какие права у файла hello.py
aglasis@LAPTOP-C0OP46FS:~$ ll
total 24
drwxr-xr-x 1 aglasis aglasis  4096 Dec 22 15:05 ./
drwxr-xr-x 1 root    root     4096 Dec 17 20:11 ../
-rw------- 1 aglasis aglasis   425 Dec 22 21:09 .bash_history
-rw-r--r-- 1 aglasis aglasis   220 Dec 17 20:11 .bash_logout
-rw-r--r-- 1 aglasis aglasis  3771 Dec 17 20:11 .bashrc
drwx------ 1 aglasis aglasis  4096 Dec 17 20:54 .config/
-rw------- 1 aglasis aglasis 12288 Dec 17 20:53 .lesson3_python.py.swp
-rw-r--r-- 1 aglasis aglasis   807 Dec 17 20:11 .profile
-rw-r--r-- 1 aglasis aglasis     0 Dec 17 20:11 .sudo_as_admin_successful
-rw------- 1 aglasis aglasis  1915 Dec 22 15:05 .viminfo
-rw-rw-rw- 1 aglasis aglasis    76 Dec 22 21:05 hello.py
-rw-rw-rw- 1 aglasis aglasis    27 Dec 17 21:02 linear.py
-rw-rw-rw- 1 aglasis aglasis    50 Dec 17 21:03 result.py

# забрала чтение и редактирование у других пользователей для hello.py
aglasis@LAPTOP-C0OP46FS:~$ chmod o-rw hello.py
aglasis@LAPTOP-C0OP46FS:~$ vim hello.py
aglasis@LAPTOP-C0OP46FS:~$ cat hello.py
print("Hello, world!")

# создала нового юзера
aglasis@LAPTOP-C0OP46FS:~$ sudo useradd -s /bin/bash new_user
[sudo] password for aglasis:
aglasis@LAPTOP-C0OP46FS:~$ sudo passwd new_user
Enter new UNIX password:
Retype new UNIX password:
passwd: password updated successfully

# вернула чтение и редактирование у других пользователей для hello.py
aglasis@LAPTOP-C0OP46FS:~$ chmod o+rw hello.py
aglasis@LAPTOP-C0OP46FS:~$ ll
total 24
drwxr-xr-x 1 aglasis aglasis  4096 Dec 22 21:11 ./
drwxr-xr-x 1 root    root     4096 Dec 17 20:11 ../
-rw------- 1 aglasis aglasis   425 Dec 22 21:09 .bash_history
-rw-r--r-- 1 aglasis aglasis   220 Dec 17 20:11 .bash_logout
-rw-r--r-- 1 aglasis aglasis  3771 Dec 17 20:11 .bashrc
drwx------ 1 aglasis aglasis  4096 Dec 17 20:54 .config/
-rw------- 1 aglasis aglasis 12288 Dec 17 20:53 .lesson3_python.py.swp
-rw-r--r-- 1 aglasis aglasis   807 Dec 17 20:11 .profile
-rw-r--r-- 1 aglasis aglasis     0 Dec 17 20:11 .sudo_as_admin_successful
-rw------- 1 aglasis aglasis  2811 Dec 22 21:11 .viminfo
-rw-rw-rw- 1 aglasis aglasis    23 Dec 22 21:11 hello.py
-rw-rw-rw- 1 aglasis aglasis    27 Dec 17 21:02 linear.py
-rw-rw-rw- 1 aglasis aglasis    50 Dec 17 21:03 result.py

# зашла под новым юзером и изменила hello.py
aglasis@LAPTOP-C0OP46FS:~$ su new_user
Password:
new_user@LAPTOP-C0OP46FS:/home/aglasis$ vim hello.py
new_user@LAPTOP-C0OP46FS:/home/aglasis$ cat hello.py
print("Hello, world!")
print("This line was added by new_user")

# здесь обнаружила, что у нового юзера нет домашней директории
new_user@LAPTOP-C0OP46FS:/home/aglasis$ cd ~
bash: cd: /home/new_user: No such file or directory
new_user@LAPTOP-C0OP46FS:/home/aglasis$ cd /
new_user@LAPTOP-C0OP46FS:/$ cd ~
bash: cd: /home/new_user: No such file or directory
new_user@LAPTOP-C0OP46FS:/$ mc

Command 'mc' not found, but can be installed with:

apt install mc
Please ask your administrator.

new_user@LAPTOP-C0OP46FS:/$ exit
exit
aglasis@LAPTOP-C0OP46FS:~$ sudo apt install mc
aglasis@LAPTOP-C0OP46FS:~$ mc

# пришлось создавать папку и гуглить в интернете, как сделать ее домашней директорией для нового юзера
aglasis@LAPTOP-C0OP46FS:~$ cd /home
aglasis@LAPTOP-C0OP46FS:/home$ sudo mkdir new_user
aglasis@LAPTOP-C0OP46FS:/home$ ll
total 0
drwxr-xr-x 1 root    root    4096 Dec 22 21:21 ./
drwxr-xr-x 1 root    root    4096 Dec 17 20:05 ../
drwxr-xr-x 1 aglasis aglasis 4096 Dec 22 21:15 aglasis/
drwxr-xr-x 1 root    root    4096 Dec 22 21:21 new_user/
aglasis@LAPTOP-C0OP46FS:/home$ sudo usermod -d /home/new_user new_user
usermod: no changes
aglasis@LAPTOP-C0OP46FS:/home$ cd ~
aglasis@LAPTOP-C0OP46FS:~$ ls -l /home
total 0
drwxr-xr-x 1 aglasis aglasis 4096 Dec 22 21:15 aglasis
drwxr-xr-x 1 root    root    4096 Dec 22 21:21 new_user
aglasis@LAPTOP-C0OP46FS:~$ cd /home
aglasis@LAPTOP-C0OP46FS:/home$ chown new_user new_user
chown: changing ownership of 'new_user': Operation not permitted
aglasis@LAPTOP-C0OP46FS:/home$ sudo chown new_user new_user
aglasis@LAPTOP-C0OP46FS:/home$ sodu chgrp new_user new_user
sodu: command not found
aglasis@LAPTOP-C0OP46FS:/home$ sudo chgrp new_user new_user
aglasis@LAPTOP-C0OP46FS:/home$ cd ~

# зашла в нового юзера, переключилась на домашнюю директорию
aglasis@LAPTOP-C0OP46FS:~$ su new_user
Password:
new_user@LAPTOP-C0OP46FS:/home/aglasis$ cd ~
new_user@LAPTOP-C0OP46FS:~$ pwd
/home/new_user
new_user@LAPTOP-C0OP46FS:~$ python3 numbers.py

# создала программу, которая выводит числа с 1 до 10 с интервалом 1 сек
new_user@LAPTOP-C0OP46FS:~$ vim numbers.py
new_user@LAPTOP-C0OP46FS:~$ cat numbers.py
from time import sleep
for i in range(10):
    print(i+1)
    sleep(1)
new_user@LAPTOP-C0OP46FS:~$ python3 numbers.py
1
2
3
4
5
6
7
8
9
10
new_user@LAPTOP-C0OP46FS:~$ exit
exit
aglasis@LAPTOP-C0OP46FS:~$