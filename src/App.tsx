import React from 'react';
import {Alert, Button, View} from 'react-native';
import Crashes from 'appcenter-crashes';
import Analytics from 'appcenter-analytics';
import {Standard} from './components/tags';

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
        <Standard type={'primary'}>hey</Standard>
        <Button
          title="crash"
          onPress={() => {
            Crashes.generateTestCrash();
          }}
        />

        <Button
          title="send report"
          onPress={() => {
            Analytics.trackEvent('hi hi', {
              date: "'" + new Date() + "'",
              Internet: 'wifi',
            });
          }}
        />
      </View>
    );
  }
}
