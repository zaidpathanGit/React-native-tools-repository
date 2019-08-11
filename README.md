# React-native-tools-repository

- [React-native](https://facebook.github.io/react-native/) is a good platform to develop cross platform mobile applications. The developers who are developing mobile applications in react-native already struggle though the lifecycle of opening command prompt, starting the server and running the application and repeating this life cycle over and over until you get the stable output on your device.

- To overcome this limitation [React-native-tools-repository](https://github.com/zaidpathanGit/React-native-tools-repository/) can be help full as it provides the different scripts to accomplish the cycle easily.

# Pre-Requirements

* Windows running computer.
* Android studio should be installed.
* React-native should be installed.
* Basics of working with command prompt(cmd) in windows.

# How to use ??

Step 1. Create a folder and copy/move your all react-native projects inside that folder. (Optional)

Step 2. Open `reactConfiguration.settings` file and made the following changes.

```sh
C:\react_native_projects\
C:\Android\sdk\tools\

//The first line should be the path where your all react-native projects are stored.
//The second line should be the path where your sdk tools are stored.
```

Step 3. Execute `startServer.bat` file by double click on it or navigate to the path of the file into command prompt(cmd).

>When the file has been executed the directories are listed in which it shows the created react-native projects and then you need to enter the project name for which you want to start the server.

Step 4. You can wait for the `Dependency graph done.` message or you can also execute the file `startEmulator.bat` to start the available emulators created via android studio.

>When the file has been executed it will list the available emulator devices which is created via android studio. Then you need to enter the name of the emulator you want to start.

Step 5. Once your server and emulator is working properly now you are ready to run your project. You need to execute the file `runAndroid.bat` to build, compile and run your react-native project.

>When the file has been executed the directories are listed in which it shows the created react-native projects and then you need to enter the project name to execute build, compile and run your project for android system.

Step 6. Finish.

# Conclusion

Thats all from my side still if you find anything which makes my repository works more better then feel free to tell me. you can also contact on zaidpathan339@gmail.com Thank you :)
