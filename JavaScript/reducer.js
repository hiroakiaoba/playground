const HOGE = 'HOGE';
const PIYO = 'PIYO';

const note = { name: 'note' };

const state = {
  hoge: 'hoge',
  name: 'piyopiyo',
};
const action = {
  type: HOGE,
  note,
};

const firstReducer = (state, action) => {
  return ({
    [HOGE]({ note }) {
      return {
        ...state,
        name: note.name
      }
    }
  }[action.type] || (() => state))(action)
}

console.log(firstReducer(state, action));

const secondReducer = createReducer({
  [HOGE](state, action) {
    return {
      ...state,
    }
  },
  [PIYO](state, action) {
    return {
      ...state,
    }
  }
})

function createReducer(obj) {
  return (state, action) => {
    return (obj[action.type] || (() => state))(state, action)
  }
}

console.log(secondReducer(action, state));

