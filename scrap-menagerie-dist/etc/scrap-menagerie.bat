
 @echo off
 setLocal EnableDelayedExpansion
 set CLASSPATH="
 for /R ./lib %%a in (*.jar) do (
   set CLASSPATH=!CLASSPATH!;%%a
 )
 set CLASSPATH=!CLASSPATH!"
 
set PARAMS=-javaagent:agent\rns-agent.jar ^
	-Djava.library.path=native ^
	-Dsun.awt.noerasebackground=true ^
	-Dsun.java2d.noddraw=true ^
	-Dsun.java2d.d3d=false ^
	-Xmx128m
java -classpath %CLASSPATH% %PARAMS% org.hawkinssoftware.ui.util.scraps.ScrapMenagerieMain
