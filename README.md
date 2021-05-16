# Introduction
This project consists of the intial R1 architecture of the IoTBay webstore application.

# Deployment Information
The project has been packaged into a .zip file - the web application that can be deployed on jsp containers and serverlets. Alternativley, the project can be launched through supported IDEs (e.g. Apache NetBeans).

Note, the directory structure should be preserved to ensure that the css files are loaded correctly.

### Database Configuration
1. Create a new Java Database
2. Record the database name, username, password, and connection string.
3. Start the database via NetBeans
3. Execute the provided database scripts (creation and insertion scripts found within `web/db_scripts`).
4. Within the DBConnection.java file (within the DAO package), update the information in the connection information.
   Ensure that the URL, username, and password information match with the database details created.

### Prerequisites
1. You must have Glassfish Server installed along with Java EE 8 on your machine

### Steps to Deploy
1. Import the zip file to NetBeans and configure your database as mentioned above.
2. Start database connection.
3. Run the project.
4. Disconnect the database after you are done.

 

