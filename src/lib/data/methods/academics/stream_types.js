const Promise = require('bluebird');

const models = require('../../models');

const streamTypesMethods = {};

streamTypesMethods.addStreamType = info => new Promise((resolve, reject) => {
  console.log(info);
  models.academics.stream_types.create(info)
    .then((newStreamType) => {
      console.log(newStreamType);
      resolve(newStreamType);
    })
    .catch((err) => {
      reject(err);
    });
});

streamTypesMethods.updateStreamTypes = (info, data) => new Promise((
  resolve,
  reject,
) => {
  models.academics.stream_types.update(data, {
    where: {
      id: info.id,
    },
  })
    .then((updated) => {
      if (updated > 0) {
        resolve(updated);
      } else {
        reject(new Error());
        // throw ('err')
      }
    }).catch((error) => {
      reject(error);
    });
});

streamTypesMethods.deleteStreamTypes = info => new Promise((
  resolve,
  reject,
) => {
  models.academics.stream_types.destroy({
    where: {
      id: info.id,

    },
  }).then((deleted) => {
    if (deleted === 0) {
      console.log('error tg');
      reject(new Error());
    } else {
      resolve(deleted);
    }
  }).catch((err) => {
    reject(err);
  });
});

module.exports = streamTypesMethods;
