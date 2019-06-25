const Enumerable = require('linq');

const ary = [
  {
    user_utterance: '{ "message": "messageです！", "type": "text" }',
    bot_response: '{ "message": "ボットの返答", "type": "text" }',
  },
  {
    ok: 'ok',
    test: 'test',
  }
]

const formatted = Enumerable
  .from(ary)
  .where(o => o.user_utterance )
  .select()
  .toArray();


console.dir(formatted);