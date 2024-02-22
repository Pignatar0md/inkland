# INKland

The definitive app for the tattos world.

iOS: [![Build status](https://build.appcenter.ms/v0.1/apps/6d11a65b-1652-49c2-b693-ea8acc608f93/branches/dev/badge)](https://appcenter.ms)

Android: [![Build status](https://build.appcenter.ms/v0.1/apps/3999004b-36cb-486c-9cdb-0cd44b49319a/branches/dev/badge)](https://appcenter.ms)

#

**Requirements:**

<!-- UL -->

- node >= 18.19.0
- npm >= 10.2.3
- git
- cocoapods >= 1.15.2
- watchman (only linux and mac users)
- AndroidStudio (optional but recommended)
- XCode (optional: if you have an Apple computer)

## Installation

In a terminal, after cloning the repo, please navigate to the root folder:

```bash
cd ./inklandmobile
```

Once there, run this:

```bash
npm install --legacy-peer-deps
npm audit fix --legacy-peer-deps
npx npm-force-resolutions
npx pod-install
npm run bundle-ios
npm run bundle-android
```

## Configuration

Android: We need to specify the sdk location, in the local.properties file inside the android/ folder.
For mac e.g.: sdk.dir=/Users/_USERNAME_/Library/Android/sdk

Now you can open the code with your preferred code editor and set the variables inside the .env file located in the root folder (ask for its values to another dev who already is working on this project):

```bash
API_BASE=https://puttheurlapihere.com
.
.
.
```

Let's go back to the terminal and run:

```bash
npx react-native start
```

![rn running in terminal](https://media.geeksforgeeks.org/wp-content/uploads/20221208184915/npxreactnativestart.png)

You should see something like this ---^

Now you should open the iOS project on Xcode, going to the root application folder -> ios and double clic on .xcworkspace file.

Once you opened the iOS project in XCode, you should link the ios/main.jsbundle file. So, right clic on VFXFinancial folder inside inklandmobile project -> add files to... (select the file), copy file if it needed (checked) and add files to project (inklandmobile checked).

Should open the AndroidStudio project opening the AndroidStudio IDE and pressing "Open project", after that selecting the android folder inside the root application folder.

If you run in other terminal:

```bash
npm run test
```

You will see the tests running while you are adding or modifying code.

Happy coding!
