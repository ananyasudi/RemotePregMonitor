## how to run application:

* once you download zip and extract it, run `flutter create .` in the `finalproj` directory.Now, all files would be downloaded to run application

* Select device to run application (running this application on chrome(web) would give xml error.so, try running on emulator/real device)

* This application runs only when clientid, clientsecret are filled in ./lib/pages/signin.dart(we've removed it becuase of security issues)

## how does application work:

we've implemented following features: 

* Login: There is a list of patients in zoho crm contacts.Only those patients can log into their account. This is implemented by searching emailid in the zoho contacts list. When user clicks on login after entering emailid, this application fetches accesstoken using hardcoded refresh token (Access token is like other form of credentials. we need access token to fetch any data from zoho account but the problem is it gets expired after 10 minutes. To get new access token at any time, we use refresh token. Advantage of refresh token is that it doesnot get expired forever) For now, we'll be able to login with only 2 emails because all the patients donot have password field in the contacts (null is given to patients passwords). dummyemail- `drrameshmaturi@hotmail.com`; password- `password` 

* Profile: When patient clicks on profile, application takes emialid of patient and then searches it across the list, then fetches few important details of the patient and then displays on their profile. `./lib/pages/profile.dart` contains relevant code.

* display blogs (`/lib/pages/blogdisplay.dart`) : we've taken blogs and diaplyed it using webview. Each blog is related to different pregnancy week. 

* Appointments page (`/lib/pages/AppointmentScreen.dart`): we were not able to implement booking appointments. We've just designed interface of booking appointments

* vital input form (`/lib/pages/vitals.dart`) : we didnot implement feature to push patient's health parameters to zoho analytics. This feature enables patients to fill few health parameters and submit them. our application will send this data to analytics and this analytic displays it using graphs (trendlines)




Tech Stack: Flutter (for both frontend and make calls to zoho APIs)

