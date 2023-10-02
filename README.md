# DSAcharya
A web-based portal that helps learners track their progress in learning Data Structures and Algorithms (DSA).

##Introduction 
The objective for the DSAcharya - All-in-One DSA Tracker project is to create a web-based
tool that helps users track their progress in learning data structures and algorithms (DSA).
The tool would allow users to log in, set daily target goals, and keep track of their progress,
including the topics they have covered, their performance on practice problems, and any
relevant notes or resources they have accumulated.
The project is be designed to be user-friendly, visually appealing, and accessible on
multiple platforms of various screen-size(including mobile devices).


----------------> Modules <----------------

1. User Login: This module will handle user authentication and authorization, and user profile management. It uses session management for tracking the user login details.

2. Learning Material: This module will provide learning materials such as important chapter-wise filtered video tutorials on various DSA topics.

3. Topic_wise Practice Problems: This module will allow users to solve/practice problems topic-wise and track and receive feedback on their performance.

4. Progress Tracker: This module will allow users to track their progress in learning DSA,including the topics they have covered, their performance on practice problems, and any relevant notes or resources they have accumulated.

5. Leaderboard: This module will allow user to see his/her global rank based on the number of problems done and topics solved. 

6. Company-wise Problems: This module will allow users to solve/practice problems which commonly appears in selected company and track the progress. 

------------------------------------------------

##Tech Stack
-HTML, CSS
-Javascript, Jquery, Ajax
-Java Servlet, JSP(Java Server Pages)
-MYSQL(Database)

------------------------------------------------

##Requirements
-jdk 19
-Apache NetBeans IDE 16
-MySQL
-apache-tomcat-9.0.71
-mysql-connector-j-8.0.32.jar
-------------------------------------------------

##Steps to Run Project Using netbeans##
# Do setup all requirements. Steps are given below.
# Open Netbeans.
# click on file > Open Project
# Browse to 'dsacharya' folder in given project's folder.
# click on run project.

# Now you can use project. Explore it.

----------------->Setup<-------------------------
1. Install all given requirements
2. Extract given project's zip file
3. Open NetBean and open our project in it.
4. Add jar file (mysql-connector-j-8.0.32.jar) by right clicking on libraries folder.
5. Add tomcat server using following steps:
	- click on tools menu.
	- choose servers option. (server window will apear)
	- click on add server button. (Add server Instance window will apear)
	- Choose option Apache Tomcat or TomEE then click on next
	- Choose server location. (choose folder in which we have bin, conf,.. folders)
	- Insert username and password then finish

----------------> Getting Database <----------------
1. Open MySql workbench.
2. click on database tab.
3. choose connect to database.
4. insert your credentials.
5. choose Data Import/Restore option from Management List at left side of screen.
6. In Import from Disk, choose Import from Dump Project Folder" option.
7. Browse and select "database_dsacharya" folder from given project's zip file.
8. click on "Load Folder Contents" button. 
9. database will be copied in your computer.





	
