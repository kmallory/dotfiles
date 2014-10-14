#!/bin/sh
#
function killAllProcs(  )
{
	sudo /usr/bin/killall $1	
	/bin/ps ax | /usr/bin/grep $1|/usr/bin/awk '{print $1}'|/usr/bin/xargs sudo kill -9
}

echo "removing LANDesk Client"

# stop our processes

if [ -e "/Library/LaunchDaemons" ]; then
sudo launchctl unload /Library/LaunchDaemons
killAllProcs "ldslm"
killAllProcs "ldtmc"
killAllProcs "ldcron"
killAllProcs "lddaemon"
else
killAllProcs "ldwatch"
killAllProcs "ldcba"
killAllProcs "ldslm"
killAllProcs "ldremote"
killAllProcs "ldtmc"
killAllProcs "ldcron"
killAllProcs "lddaemon"
#sudo /usr/bin/killall ldwatch
#sudo /usr/bin/killall ldcba
#sudo /usr/bin/killall ldslm
#sudo /usr/bin/killall ldremote
#sudo /usr/bin/killall ldtmc
fi

# remove the crontab
crontabTag="# ldms"									# used to determine if the crontab file has already setup
installed=`sudo crontab -l -u root | grep -c '# ldms'`
if [ $installed -gt 0 ]; then
	sudo crontab -l | sed '/ldms/d' | sudo crontab -
fi

# remove the port exceptions we put in the firewall at installation
if [ -e "/Library/Preferences/com.apple.sharing.firewall.plist" ]; then
	saveDir=`pwd`
	cd /Library/Application\ Support/LANDesk/bin/
	echo `pwd`
	echo "Removing LANDesk Remote Control port exceptions"
	sudo ./ldxmlutil -d -f /Library/Preferences/com.apple.sharing.firewall.plist -k "/firewall/LANDesk Remote Control"
	echo "Removing LANDesk Trageted Multicast port exceptions"
	sudo ./ldxmlutil -d -f /Library/Preferences/com.apple.sharing.firewall.plist -k "/firewall/LANDesk Targeted Multicast"
	echo "Removing LANDesk CBA8 port exceptions"
	sudo ./ldxmlutil -d -f /Library/Preferences/com.apple.sharing.firewall.plist -k "/firewall/LANDesk CBA8"
	cd $saveDir
	echo `pwd`
fi
if [ -e "/System/Library/PrivateFrameworks/NetworkConfig.framework/Versions/Current/Resources/firewalltool" ]; then
	sudo /System/Library/PrivateFrameworks/NetworkConfig.framework/Versions/Current/Resources/firewalltool
else
	echo "Warning the firewall must be restarted"
fi
if [ -e "/Library/Preferences/com.landesk.broker.plist" ]; then
	echo " removing com.landesk.broker.plist"
	sudo rm "/Library/Preferences/com.landesk.broker.plist"
fi

# remove trusted access Desktop shortcut
sudo rm $HOME/Desktop/Security\ scan\ for\ network\ access.app
sudo rm $HOME/Desktop/LANDesk\ Trusted\ Agent.app

# remove user crash logs
if [ -e "~/Library/Logs/CrashReporter/ldcba.crash.log" ]; then
	echo " removing ldcba.crash.log"
	sudo rm "~/Library/Logs/CrashReporter/ldcba.crash.log"
fi
if [ -e "~/Library/Logs/CrashReporter/ldremote.crash.log" ]; then
	echo " removing ldremote.crash.log"
	sudo rm "~/Library/Logs/CrashReporter/ldremote.crash.log"
fi
if [ -e "~/Library/Logs/CrashReporter/ldscan.crash.log" ]; then
	echo " removing ldscan.crash.log"
	sudo rm "~/Library/Logs/CrashReporter/ldscan.crash.log"
fi
if [ -e "~/Library/Logs/CrashReporter/ldwatch.crash.log" ]; then
	echo " removing ldwatch.crash.log"
	sudo rm "~/Library/Logs/CrashReporter/ldwatch.crash.log"
fi
if [ -e "~/Library/Logs/CrashReporter/ldorwell.crash.log" ]; then
	echo " removing ldorwell.crash.log"
	sudo rm "~/Library/Logs/CrashReporter/ldorwell.crash.log"
fi
if [ -e "~/Library/Logs/CrashReporter/ldobserve.crash.log" ]; then
	echo " removing ldobserve.crash.log"
	sudo rm "~/Library/Logs/CrashReporter/ldobserve.crash.log"
fi
if [ -e "~/Library/Logs/CrashReporter/ldremotemenu.crash.log" ]; then
	echo " removing ldremotemenu.crash.log"
	rm "~/Library/Logs/CrashReporter/ldremotemenu.crash.log"
fi

# remove application support
if [ -e "/Library/Application Support/LANDesk" ]; then
	echo " removing application support"
	sudo rm -r "/Library/Application Support/LANDesk"
fi

# remove crash logs
if [ -e "/Library/Logs/CrashReporter/ldcba.crash.log" ]; then
	echo " removing ldcba.crash.log"
	sudo rm "/Library/Logs/CrashReporter/ldcba.crash.log"
fi
if [ -e "/Library/Logs/CrashReporter/ldremote.crash.log" ]; then
	echo " removing ldremote.crash.log"
	sudo rm "/Library/Logs/CrashReporter/ldremote.crash.log"
fi
if [ -e "/Library/Logs/CrashReporter/ldscan.crash.log" ]; then
	echo " removing ldscan.crash.log"
	sudo rm "/Library/Logs/CrashReporter/ldscan.crash.log"
fi
if [ -e "/Library/Logs/CrashReporter/ldwatch.crash.log" ]; then
	echo " removing ldwatch.crash.log"
	sudo rm "/Library/Logs/CrashReporter/ldwatch.crash.log"
fi
if [ -e "/Library/Logs/CrashReporter/ldorwell.crash.log" ]; then
	echo " removing ldorwell.crash.log"
	sudo rm "/Library/Logs/CrashReporter/ldorwell.crash.log"
fi
if [ -e "/Library/Logs/CrashReporter/ldobserve.crash.log" ]; then
	echo " removing ldobserve.crash.log"
	sudo rm "/Library/Logs/CrashReporter/ldobserve.crash.log"
fi
if [ -e "/Library/Logs/CrashReporter/ldremotemenu.crash.log" ]; then
	echo " removing ldremotemenu.crash.log"
	sudo rm "/Library/Logs/CrashReporter/ldremotemenu.crash.log"
fi

# remove preferences
if [ -e "/Library/Preferences/com.landesk.remote.plist" ]; then
	echo " removing com.landesk.remote.plist"
	sudo rm "/Library/Preferences/com.landesk.remote.plist"
fi

if [ -e "/Library/Preferences/com.landesk.scanner.plist" ]; then
	echo " removing com.landesk.scanner.plist"
	sudo rm "/Library/Preferences/com.landesk.scanner.plist"
fi

if [ -e "/Library/Preferences/com.landesk.ldms.plist" ]; then
	echo " removing com.landesk.ldms.plist"
	sudo rm "/Library/Preferences/com.landesk.ldms.plist"
fi

if [ -e "/Library/Preferences/com.landesk.uuid.plist" ]; then
	echo " NOT removing com.landesk. uuid.plist"
fi

# remove preference pane
if [ -e "/Library/PreferencePanes/LANDesk Client.prefPane" ]; then
	echo " removing preference pane"
	sudo rm -rf "/Library/PreferencePanes/LANDesk Client.prefPane"
fi
if [ -e "/Library/PreferencePanes/LANDesk Agent.prefPane" ]; then
	echo " removing preference pane"
	sudo rm -rf "/Library/PreferencePanes/LANDesk Agent.prefPane"
fi

# remove the Utility/Agent
if [ -e "/Applications/Utilities/LANDesk Agent.app" ]; then
	echo " removing LANDesk Agent.app"
	sudo rm -rf /Applications/Utilities/LANDesk Agent.app
fi
if [ -e "/Applications/Utilities/LANDesk Agent.app" ]; then
	echo " removing LANDesk Agent.app"
	sudo rm -rf "/Applications/Utilities/LANDesk Agent.app"
fi

# remove installer receipt
if [ -e "/Library/Receipts/LDMSClient.pkg" ]; then
	echo " removing installer receipt"
	sudo rm -rf "/Library/Receipts/LDMSClient.pkg"
fi
if [ -e "/Library/Receipts/LDMSClientDebug.pkg" ]; then
	echo " removing installer receipt"
	sudo rm -rf /Library/Receipts/LDMSClientDebug.pkg
fi
if [ -e "/Library/Receipts/LANDeskClient.pkg" ]; then
	echo " removing installer receipt"
	sudo rm -rf /Library/Receipts/LANDeskClient.pkg
fi
if [ -e "/Library/Receipts/LANDeskClientDebug.pkg" ]; then
	echo " removing installer receipt"
	sudo rm -rf /Library/Receipts/LANDeskClientDebug.pkg
fi
if [ -e "/Library/Receipts/TrustedAccess.pkg" ]; then
	echo " removing installer receipt"
	sudo rm -rf /Library/Receipts/TrustedAccess.pkg
fi

# remove startup item
if [ -e "/Library/StartupItems/LANDesk" ]; then
	echo " removing LANDesk startup item"
	sudo rm -r "/Library/StartupItems/LANDesk"
fi
if [ -e "/Library/StartupItems/pds2" ]; then
	echo " removing pds2 startup item"
	sudo rm -r "/Library/StartupItems/pds2"
fi
if [ -e "/Library/StartupItems/cba8" ]; then
	echo " removing cba8 startup item"
	sudo rm -r "/Library/StartupItems/cba8"
fi
if [ -e "/Library/StartupItems/OSD" ]; then
	echo " removing OSD startup item"
	sudo rm -r "/Library/StartupItems/OSD"
fi
if [ -e "/Library/StartupItems/LTAClientEnforcer" ]; then
	echo " removing LTAClientEnforcer startup item"
	sudo rm -r "/Library/StartupItems/LTAClientEnforcer"
fi

# remove pid

if [ -e "/var/run/landesk" ]; then
	echo " removing pid files"
	sudo rm -r "/var/run/landesk"
fi

# remove Kaanapali files

if [ -e "/usr/LANDesk" ]; then
	echo " removing usr/LANDesk files"
	sudo rm -r "/usr/LANDesk"
fi

# remove Xinet files

if [ -e "/etc/xinetd.d/LANDeskCBA" ]; then
	echo " removing cba xinet files"
	sudo rm "/etc/xinetd.d/LANDeskCBA"
fi
if [ -e "/etc/xinetd.d/ldpds1" ]; then
	echo " removing pds1 xinet files"
	sudo rm "/etc/xinetd.d/ldpds1"
fi
if [ -e "/etc/xinetd.d/ldpds2" ]; then
	echo " removing pds2 xinet files"
	sudo rm "/etc/xinetd.d/ldpds2"
fi
if [ -e "/etc/xinetd.d/cba8" ]; then
	echo " removing cba8 xinet files"
	sudo rm "/etc/xinetd.d/cba8"
fi
if [ -e "/etc/xinetd.d/pds2" ]; then
	echo " removing pds2 xinet files"
	sudo rm "/etc/xinetd.d/pds2"
fi

# remove LaunchDaemon files

if [ -e "/Library/LaunchDaemons" ]; then
	echo " removing launchd files"
	if [ -e "/Library/LaunchDaemons/com.landesk.cba8.plist" ]; then
		echo " removing com.landesk.cba8.plist launchd file"
		sudo rm "/Library/LaunchDaemons/com.landesk.cba8.plist"
	fi
	if [ -e "/Library/LaunchDaemons/com.landesk.ldtmc.plist" ]; then
		echo " removing com.landesk.ldtmc.plist launchd file"
		sudo rm "/Library/LaunchDaemons/com.landesk.ldtmc.plist"
	fi
	if [ -e "/Library/LaunchDaemons/com.landesk.ldwatch.plist" ]; then
		echo " removing com.landesk.ldwatch.plist launchd file"
		sudo rm "/Library/LaunchDaemons/com.landesk.ldwatch.plist"
	fi
	if [ -e "/Library/LaunchDaemons/com.landesk.msgsys.plist" ]; then
		echo " removing com.landesk.msgsys.plist launchd file"
		sudo rm "/Library/LaunchDaemons/com.landesk.msgsys.plist"
	fi
	if [ -e "/Library/LaunchDaemons/com.landesk.pds.plist" ]; then
		echo " removing com.landesk.pds.plist launchd file"
		sudo rm "/Library/LaunchDaemons/com.landesk.pds.plist"
	fi
	if [ -e "/Library/LaunchDaemons/com.landesk.pds1.plist" ]; then
		echo " removing com.landesk.pds1.plist launchd file"
		sudo rm "/Library/LaunchDaemons/com.landesk.pds1.plist"
	fi
	if [ -e "/Library/LaunchDaemons/com.landesk.pds2.plist" ]; then
		echo " removing com.landesk.pds2.plist launchd file"
		sudo rm "/Library/LaunchDaemons/com.landesk.pds2.plist"
	fi
	if [ -e "/Library/LaunchDaemons/com.landesk.remote.plist" ]; then
		echo " removing com.landesk.remote.plist launchd file"
		sudo rm "/Library/LaunchDaemons/com.landesk.remote.plist"
	fi
fi

echo " removing netinfo services entries"
# get our system version
sysVersion=$(uname -r)
sysMajorVersion=${sysVersion%%.*}
tempMinorVersion=${sysVersion#*.}
sysMinorVersion=${tempMinorVersion%%.*}

if [ $sysMajorVersion -lt 8 ] ; then
	echo "Uninstaller: Uninstalling Jaguar and Panther items"
	sudo nicl . -delete /services/pds
	sudo nicl . -delete /services/pds1
	sudo nicl . -delete /services/pds2
	sudo nicl . -delete /services/cba8
	sudo nicl . -delete /services/msgsys
else
	echo "Uninstaller: Uninstalling Tiger or later items"
	sudo dscl . -delete /services/pds
	sudo dscl . -delete /services/pds1
	sudo dscl . -delete /services/pds2
	sudo dscl . -delete /services/cba8
	sudo dscl . -delete /services/msgsys
fi

echo " removing services entries"
sudo cp -f /etc/services /etc/services.bak
sudo /bin/sh -c 'sed -e /cba8/d -e /pds/d -e /pds1/d -e /pds2/d -e /msgsys/d /etc/services.bak > /etc/services'
sudo rm /etc/services.bak

echo " removing inet entries"
sudo cp -f /etc/inetd.conf /etc/inetd.conf.bak
sudo /bin/sh -c 'sed -e /cba8/d -e /pds/d -e /pds1/d -e /pds2/d -e /msgsys/d /etc/inetd.conf.bak > /etc/inetd.conf'
sudo rm /etc/inetd.conf.bak

# Update Xinet with changes

if [ -e "/Library/LaunchDaemons" ]; then
sudo launchctl load /Library/LaunchDaemons
else
if [ -e "/var/run/xinetd.pid" ]; then
	echo " hupping xinetd"
	sudo /usr/bin/killall -HUP xinetd
	sudo /bin/sleep 5
fi
if [ ! -e "/var/run/xinetd.pid" ]; then
	# If not Xinet, restart it. (The HUP might kill it if there are no services.)
	echo " restarting xinetd"
	sudo xinetd -pidfile /var/run/xinetd.pid
fi
fi

echo "finished"
