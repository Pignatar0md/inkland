import {semantic} from '../../assets/semantic';
import React from 'react';
import {FC, ReactElement, ReactNode} from 'react';
import {StyleSheet, Text, View} from 'react-native';
import {tagType} from 'types/components/Tag';

const Standard: FC<{children: ReactNode; type: tagType}> = ({
  children,
  type,
}): ReactElement => {
  let customWrapperStyle = null;
  switch (type) {
    case 'disabled':
      customWrapperStyle = [
        styles.wrapper,
        {backgroundColor: semantic.tag.bg.primary},
      ];
      break;
    case 'disabled':
      customWrapperStyle = [
        styles.wrapper,
        {backgroundColor: semantic.tag.bg.primary},
      ];
      break;
    case 'disabled':
      customWrapperStyle = [
        styles.wrapper,
        {backgroundColor: semantic.tag.bg.primary},
      ];
      break;
    case 'disabled':
      customWrapperStyle = [
        styles.wrapper,
        {backgroundColor: semantic.tag.bg.primary},
      ];
      break;
    case 'disabled':
      customWrapperStyle = [
        styles.wrapper,
        {backgroundColor: semantic.tag.bg.primary},
      ];
      break;
    default:
      customWrapperStyle = [
        styles.wrapper,
        {backgroundColor: semantic.tag.bg.primary},
      ];
      break;
  }

  return (
    <View style={customWrapperStyle}>
      <Text style={styles.text}>{children}</Text>
    </View>
  );
};

const styles = StyleSheet.create({
  wrapper: {
    borderRadius: 4,
  },
  text: {
    color: 'white',
  },
});

export {Standard};
