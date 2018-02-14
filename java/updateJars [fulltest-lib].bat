SET NetBeansProjects=C:\Users\G0042204\Documents\NetBeansProjects
SET LibName=fulltest-lib.jar
SET LibPath=%NetBeansProjects%\fulltest-lib\dist\fulltest-lib.jar

del %NetBeansProjects%\fulltestAPI\lib\%LibName%
del %NetBeansProjects%\customerAPI\customerAPI\lib\%LibName%
del %NetBeansProjects%\queue-lib\queue-lib\lib\%LibName%
del %NetBeansProjects%\workerAPI\worker\lib\%LibName%
del %NetBeansProjects%\queueAPI\queueAPI\lib\%LibName%


copy %LibPath% %NetBeansProjects%\fulltestAPI\lib\
copy %LibPath% %NetBeansProjects%\customerAPI\customerAPI\lib\
copy %LibPath% %NetBeansProjects%\queueAPI\queueAPI\lib\
copy %LibPath% %NetBeansProjects%\stealerAPI\stealerAPI\lib\
copy %LibPath% %NetBeansProjects%\queue-lib\queue-lib\lib\
copy %LibPath% %NetBeansProjects%\workerAPI\worker\lib\
