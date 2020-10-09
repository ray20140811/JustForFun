Arduino
=======

Problem
-------

* Installed Arduino in Parabola(Arch Linux) but got error during start Arduino IDE

	ray@Parabola ~]# arduino
	Picked up JAVA_TOOL_OPTIONS:
	Set log4j store directory /root/.arduino15
	java.lang.NullPointerException
		at processing.app.Base.rebuildProgrammerMenu(Base.java:1705)
		at processing.app.Base.<init>(Base.java:286)
		at processing.app.Base.main(Base.java:150)

	[ray@Parabola ~]$ sudo pacman -S arduino-avr-core
