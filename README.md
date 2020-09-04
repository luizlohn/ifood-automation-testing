# iFood Automation Testing

This project simulate a user interaction with App.

I used a App from Infinitepay

##### The main like used on project

-  Cucumber
-  Rspec
-  Appium
-  Appium Doctor
-  Selenium

***

#### To Install

-  First of all you should [Install ruby](http://installrails.com/)
-  Install Appium
```bash
npm install -g appium
```
-  Install appium-doctor check
```bash
npm install -g appium-doctor
```
-  Clone the repository:
```bash
 git@github.com:luizlohn/ifood-automation-testing.git
```

-  Access the project root folder:
```bash
 cd ifood-automation-tests
```   

-  Instal bundle:
```bash
 gem install bundle
```

-  Install the dependencies:
```bash
 bundle install
```

The project is already to be used.

***

#### How to run
Before run, you should verify some dependeces:
```bash
 appium-doctor
```
You should have all "Diagnostic for necessary dependencies" installed.   
You should have on Diagnostic for optional dependencies installed:
-  opencv4nodejs
-  mjpeg-consumer
-  set-simulator-location
-  idb and idb_companion
-  ios-deploy
-  gst-launch and gst-inspect

#### Execute tests ####
Execute this command inside the project:
```shell
$ rake start[OPERATION_SYSTEM,RUNNER,PROFILE]
```
Understand command:  
**OPERATION_SYSTEM:** android, ios  
**RUNNER:** local  
**PROFILE:** [profiles](cucumber.yml)  

Example:
```shell
$ bundle exec rake start[android,smoke_test]
```

If you got a error, use this:

```shell
$ noglob bundle exec rake start[android,local,login]
```


#### OBS
This is only a automation testing using a app that you can find on 
apk download site
