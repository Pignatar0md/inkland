import React from 'react';
import {Alert, View} from 'react-native';
import Crashes from 'appcenter-crashes';
import Analytics from 'appcenter-analytics';
import Login from './screens/Login';
export default class App extends React.Component {
  constructor(props: any) {
    super(props);
    this.checkPreviousSession();
  }

  async checkPreviousSession() {
    const didCrash = await Crashes.hasCrashedInLastSession();
    const enabled = await Analytics.isEnabled();
    console.log('analytics is enabled? ', enabled);
    if (didCrash) {
      const crashReport = await Crashes.lastSessionCrashReport();
      console.log(crashReport);
      Alert.alert("Sorry about the crash, we're working on solving it");
    }
  }

  render() {
    return (
      <View style={{flex: 1, justifyContent: 'center', alignItems: 'center'}}>
        <Login />
      </View>
    );
  }
}
