const numberToString = (seconds: number) => {
  return seconds + "%";
};

const stringToNumber = (v?: string) => {
  if (!v) {
    return 0;
  }

  const numStr = v.replace("%", "");
  return parseInt(numStr, 10);
};

export default {
  numberToString,
  stringToNumber,
};
