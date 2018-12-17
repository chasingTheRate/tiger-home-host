const amqp = require('amqplib/callback_api');
amqp.connect('amqp://localhost', (err, conn) => {
  conn.createChannel((err, ch) => {
    const q = 'hello';
    const msg = 'Hello Worldx';
    ch.assertQueue(q, {durable: false});
    ch.sendToQueue(q, new Buffer.from('test'));
    console.log(" [x] Sent %s", msg);
  });
  setTimeout(() => {
    conn.close();
    process.exit(0)
  }, 500);
});