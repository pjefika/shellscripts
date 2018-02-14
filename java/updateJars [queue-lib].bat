SET NetBeansProjects=C:\Users\G0042204\Documents\NetBeansProjects
del %NetBeansProjects%\workerAPI\worker\lib\queue-lib.jar 
del %NetBeansProjects%\queueAPI\queueAPI\lib\queue-lib.jar 
copy %NetBeansProjects%\queue-lib\queue-lib\dist\queue-lib.jar  %NetBeansProjects%\workerAPI\worker\lib\
copy %NetBeansProjects%\queue-lib\queue-lib\dist\queue-lib.jar  %NetBeansProjects%\queueAPI\queueAPI\lib\