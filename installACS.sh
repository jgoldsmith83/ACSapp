#!~/bin/bash

echo "Your computer is downloading and installing the Python interpreter and the files necessary to facilitate the app. If you are unsure of this app or feel any amount of doubt about installing, please cancel the installation. You can reach me directly for questions concerning any aspect from this app."
echo "************************************************************************"

echo "Should we continue with the installation?(type 'y' or 'n' then press enter) > "
read proceed

runApp = "gui.py"

if (proceed = "y")
	then echo "Thank you for installing the ACS Troubleshooter!"
			runApp
	else echo "If you are wary of this app's trust level or security, please call me immediately so I can address your concerns!"
