const str = '11+(22+2+(100+30+(400+100)))+5'; // -> ['11', '+', ['22', '+', '2'], '5']

// TODO: 計算できるようにする。多次元配列なので１層ずつ計算できるようにする。
// ['1', '+', ['1', '+', '3']] -> ['1', '+', '4'] -> 5

const state = { s: str, i: 0 };

const parse_paren = state => {
  let result = [];

  for (;state.s[state.i] !== ')'; state.i++) {
    result.push(parse_token(state));
  }

  return result;
}

const parse_token = state => {
  if (state.s[state.i] === '+') {
    return state.s[state.i];
  } else if (state.s[state.i] === '(') {
    state.i++;
    return parse_paren(state);
  } else {
    let tmp = '';
    for (;'0123456789'.indexOf(state.s[state.i]) !== -1; state.i++) {
      tmp += state.s[state.i];
    }
    state.i--;
    return tmp;
  }
}

const parse = state => {
  const result = [];

  while (state.i < state.s.length) {
    result.push(parse_token(state));
    state.i++
  }

  return result;
}

console.log(parse(state));
