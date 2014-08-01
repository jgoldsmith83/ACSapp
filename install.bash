#! /bin/bash


clear
echo "*******************************************************************************"
echo " "
echo "     *******************************************************************"
echo " "
echo "              ***********************************************"
echo " "
echo "                          *************************"
echo " "
echo "Your computer is going to download and install the Python interpreter"
echo "and the files necessary to facilitate the app. If you are unsure of this app or feel any amount of doubt about installing it - please cancel the installation. You can reach me directly for questions concerning any aspect from this app."
echo " "
echo "                          *************************"
echo " "
echo "              ***********************************************"
echo " "
echo "     *******************************************************************"
echo " "
echo "*******************************************************************************"

echo " "

echo "Should we continue with the installation?(type 'y' or 'n' then press enter) "
#echo "> "
read -p "> " proceed


if [ $proceed == "y" ]
	then echo " "
		echo "Thank you for installing the ACS Troubleshooter!"
		echo " "
		echo "The next line is going to ask for your password to initialize a download"
		echo "sequence from the standard Ubuntu repositories"
		echo " "
			sudo apt-get install testing
		echo "The ACS Troubleshooter has been successfully installed."
		read -p "Press [ENTER] key to open the ACS Troubleshooter > "
		
			python gui.py &
		exit 1
elif [ $proceed == "n" ]
	then echo " " 
		echo "If you are wary of this app's trust level or security, please call me"
		echo "immediately so I can address your concerns!"
		echo " "
		exit 1
else
	echo "Invalid input"
	echo " "
		exit 1

fi

