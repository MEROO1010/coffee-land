# coffee_land  :coffee:	 

## :pushpin: Getting Started
Coffee Land is a cross-platform mobile application developed using Flutter, designed to provide users with a seamless coffee ordering experience. This project brings to life a UI/UX design previously showcased on Behance, emphasizing intuitive navigation and aesthetic appeal.

Design Inspiration

The application's design is based on a concept previously created and shared on Behance. You can view the original design here:

👉 Coffee Land App Design on Behance

https://www.behance.net/gallery/149167533/Coffee-Land-App-design  


## :pushpin: The mouckup 
![mouckup coffeeland](https://user-images.githubusercontent.com/72358981/210159336-ac5f3535-a54f-4d66-a996-a77c280b50be.png)

##  :pushpin:The preview of the app :point_down:	

https://user-images.githubusercontent.com/72358981/210197531-64494968-6795-401c-97b3-e823382f45c4.mp4


 # 🚀 Features

User-Friendly Interface: Navigate through a clean and intuitive UI.
Menu Browsing: Explore a variety of coffee options with detailed descriptions.
Order Customization: Customize your coffee orders to your preference.
Cart Management: Add, remove, and modify items in your cart seamlessly.
Order Tracking: Monitor the status of your orders in real-time.
 # 🛠️ Tech Stack

Frontend: Flutter (Dart)
Backend: Django (Python)
State Management: Provider
Database: SQLite (Local), PostgreSQL (Production)
Authentication: Firebase Auth
APIs: RESTful APIs developed using Django REST Framework

# 📁 Project Structure

coffee-land/

├── android/

├── assets/

│   └── images/

├── backend_django/

├── ios/

├── lib/

│   ├── models/

│   ├── screens/

│   ├── widgets/

│   └── main.dart

├── test/

├── pubspec.yaml

└── README.md



# 🧑‍💻 Getting Started

Prerequisites
Flutter SDK: Install Flutter
Python 3.x
Django: Install via pip install django
Firebase Account: Firebase Console

Installation
1. Clone the Repository
  git clone https://github.com/MEROO1010/coffee-land.git
cd coffee-land

2. Install Flutter Dependencies
  
flutter pub get

3. Set Up the Backend
   Navigate to the backend_django directory and install the required Python packages:
   cd backend_django
pip install -r requirements.txt

Apply migrations and start the Django development server:
python manage.py migrate
python manage.py runserver

4. Run the Flutter App
  
 Navigate back to the root directory and run the app:
 
   flutter run

   # 🧪 Testing
   
     To run the unit tests for the Flutter application:
   
        flutter test

 Ensure that the backend server is running before executing integration tests.


 # 🤝 Contributing


 Contributions are welcome! Please follow these steps:

1. Fork the repository.
2. Create a new branch:
   git checkout -b feature/YourFeature


3. Commit your changes:
   git commit -m "Add YourFeature"

4. Push to the branch:

   git push origin feature/YourFeature

5. Open a pull request.

# 📄 License
  
 This project is licensed under the MIT License. See the LICENSE file for details.

 
   

