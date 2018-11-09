# **Submission 1 - Football Club App (Swift / iOS)**

Football Club app uses data from TheSportsDB (open API) and presents the information to the client. This project is built on Swift for iOS and using the same principle of the Kotlin version. 

## **Objectives**
These are the objectives of this project:
1. Get the data from TheSportsDB API.
2. Present the information to the client.
3. All information should be presented in the table view.
4. Show the detail page when a table view cell is tapped.

## **Prerequisites**
These are the prerequisites before you try to read (and understand) this project:
1. You have some basic experiences in building iOS app.
2. You are familiar with Swift programming language, at least Swift 4.0. 
3. You are familiar with the CocoaPods, one of the most popular dependency manager for iOS project.
4. You are familiar with Alamofire, SwiftyJSON, and Kingfisher. We are going to use those third party library in this project.
4. You are recommended to understand the concept of UITableView dan UITableViewCell in iOS.
5. You are familiar with the concept of Model-View-Controller design pattern and Model-View-Presenter design pattern as well.

## **Project Overview**
This is what you can expect from this project:

![Screenshot from Submission 1][1]

The main page consists of UITableView only and it has only a UIImageView and a UILabel in a dell. The information is fetched from the TheSportsDB API directly. When a cell is tapped, you will be brought to detail page.

## **What Will You Learn**
These are all about what you will learn from this project:
#### **Model-View-Presenter (MVP) Design Pattern**
These are main components of MVP design pattern: 
- **_Model_** : Represent the model of your data. In this project, we will create a **Team** model that contains team name, team description, and team badge link.
- **_View_** : Represent the view of your app. This view may be vary, it can be class for a ViewController, class for a UITableViewCell, or even an Xib file.
- **_Presenter_**: Represent the process of how to present the data from the server (in this case, from TheSportsDB API) to the client.
- **_Controller_**: In MVP design pattern, **Controller** still exist of course, but its function is minimalized. Note that you split all the way the View, Model, and Presenter class, the Controller class can be thinned up, significantly.

#### **Service Class**
Every class in a project have to do only a specific job, and so does **Service** class. This class is created to get data from the server, create object based on the **Model** class, and then transfer the object to the **Presenter**.

## **Author**

* **Aji Saputra Raka Siwi**

This project is free and open. You can participate to this project to make even more better for everybody to learn.

## **License**
This project is licensed under the GNU General Public License v3.0 - see the [**LICENSE.md**][2] file for details.

[1]:	https://github.com/Ajisaputrars/Submission-1-Football-Club-App-Swift-iOS/blob/master/Screenshot/IMG3.png
[2]:	https://github.com/Ajisaputrars/Submission-1-Football-Club-App-Swift-iOS/blob/master/LICENSE
