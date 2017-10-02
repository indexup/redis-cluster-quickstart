@echo off

TITLE REDIS SERVER

SET server=%cd%\redis-server.exe
SET redis_dir=%cd%

cd %redis_dir%\7000
start /B %server% redis.windows.conf
cd %redis_dir%\7001
start /B %server% redis.windows.conf
cd %redis_dir%\7002
start /B %server% redis.windows.conf
cd %redis_dir%\7003
start /B %server% redis.windows.conf
cd %redis_dir%\7004
start /B %server% redis.windows.conf
cd %redis_dir%\7005
start /B %server% redis.windows.conf
cd %redis_dir%
ruby redis-trib.rb create --replicas 1 127.0.0.1:7000 127.0.0.1:7001 127.0.0.1:7002 127.0.0.1:7003 127.0.0.1:7004 127.0.0.1:7005