const primitives = {
  color: {
    alert: {
      '100': '#F2E7EA',
      '200': '#FFC9C9',
      '300': '#FF7171',
      '400': '#BD4C4C',
    },
    base: {
      '100': '#F4ECD9',
      '200': '#ECDFC0',
      '300': '#E4D2A7',
      '400': '#DAC185',
      '500': '#E7C87B',
    },
    info: {
      '100': '#E3EAF2',
      '200': '#ABC3DE',
      '300': '#5587C0',
      '400': '#1D5FAD',
    },
    neutral: {
      '0': '#FFFFFF',
      '100': '#FAF9F7',
      '200': '#F3F2F0',
      '300': '#EDECEA',
      '400': '#E4E3E1',
      '500': '#D3D2D0',
      '600': '#999793',
    },
    success: {
      '100': '#E7F5ED',
      '200': '#A4DDC4',
      '300': '#55C193',
      '400': '#1DAD71',
    },
    warning: {
      '100': '#FCF2E3',
      '200': '#F8DEB7',
      '300': '#F1B965',
      '400': '#EB991F',
    },
  },
};

export const semantic = {
  tag: {
    bg: {
      primary: primitives.color.base[500],
    },
  },
};
