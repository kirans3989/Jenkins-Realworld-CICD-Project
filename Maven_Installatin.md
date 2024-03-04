To install Apache Maven on Ubuntu, you can follow these steps:

Update Package Index:

Before installing any new packages, it's a good practice to update the local package index to ensure you have the latest information about available packages. Run the following command in your terminal:

bash
Copy code
sudo apt update
Install Maven:

Once the package index is updated, you can install Maven by running:

bash
Copy code
sudo apt install maven
This command will install Apache Maven along with its dependencies.

Verify Installation:

After the installation is complete, you can verify that Maven was successfully installed by checking its version:

bash
Copy code
mvn -version
This command will display the installed Maven version along with other relevant information.

(Optional) Set Environment Variables:

If you plan to use Maven frequently and want to avoid specifying the full path every time you run Maven commands, you can set up environment variables. Edit the .bashrc file in your home directory:

bash
Copy code
nano ~/.bashrc
Add the following lines at the end of the file:

bash
Copy code
export JAVA_HOME=/usr/lib/jvm/default-java  # Replace with your Java installation path if necessary
export M2_HOME=/usr/share/maven
export MAVEN_HOME=/usr/share/maven
export PATH=${M2_HOME}/bin:${PATH}
Save the changes and exit the text editor. Then, apply the changes to your current shell session by running:

bash
Copy code
source ~/.bashrc
This will ensure that Maven commands (mvn) are available in your terminal without specifying the full path.

That's it! Apache Maven should now be installed and ready to use on your Ubuntu system. You can start using it to build and manage your Java projects.
