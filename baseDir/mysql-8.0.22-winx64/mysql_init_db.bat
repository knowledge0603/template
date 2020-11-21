set MYSQLDIR=#@replaceStringMySql@#\\mysql-8.0.22-winx64
set BINDIR=%MYSQLDIR%\bin
%BINDIR%\\mysqld --defaults-file=%MYSQLDIR%\\my.ini --initialize-insecure
%BINDIR%\\mysqld --install MysqlWindowsService --defaults-file=%MYSQLDIR%\\my.ini
net start MysqlWindowsService
