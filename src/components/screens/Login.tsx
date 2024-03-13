import React, {useState} from 'react';
import {TextInput, Text, Platform, TouchableOpacity} from 'react-native';

const Login = () => {
  const [numberA, setNumberA] = useState('');
  const [numberB, setNumberB] = useState('');
  const [sum, setSum] = useState<number>(0);
  const [quit, setQuit] = useState<number>(0);

  const sumNumbers = () => {
    const numA = Number(numberA);
    const numB = Number(numberB);
    setQuit(0);
    setSum(numA + numB);
  };

  const quitNumbers = () => {
    const numA = Number(numberA);
    const numB = Number(numberB);
    setSum(0);
    setQuit(numA - numB);
  };

  return (
    <>
      <TextInput
        placeholder="Ex. 35"
        value={numberA}
        onChangeText={e => setNumberA(e)}
      />
      <TextInput
        placeholder="Ex. 3"
        value={numberB}
        onChangeText={e => setNumberB(e)}
      />
      <Text>{sum !== 0 ? sum : quit !== 0 ? quit : '0'}</Text>
      <TouchableOpacity
        accessible={Platform.OS === 'ios' ? false : true}
        onPress={() => sumNumbers()}>
        <Text>SUM</Text>
      </TouchableOpacity>
      <TouchableOpacity
        accessible={Platform.OS === 'ios' ? false : true}
        onPress={() => {
          quitNumbers();
          // Analytics.trackEvent('hi hi', {
          //   date: "'" + new Date() + "'",
          //   Internet: 'wifi',
          // });
        }}>
        <Text>quit</Text>
      </TouchableOpacity>
    </>
  );
};

export {Login};
