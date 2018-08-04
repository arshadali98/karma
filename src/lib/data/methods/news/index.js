const Promise = require('bluebird');
const _ = require('lodash');

const models = require('../../models');

const newsMethods = {};

newsMethods.insertNewsUsingEntityId = data => new Promise((
  resolve,
  reject,
) => {
  models.entities.entities.findById(data.entityId)
    .then((entity) => {
      if (_.isEmpty(entity)) {
        reject(new Error('No entity found for the given entityId'));
      } else {
        const newsData = {};
        newsData.title = data.newsTitle;
        newsData.text = data.newsText;
        models.news.news_data.create(newsData)
          .then((newsCreated) => {
            if (_.isEmpty(newsCreated)) {
              reject(new Error('News could not be inserted'
                                    + 'into news_data table.'));
            } else {
              const news = {};
              news.entity_id = data.entityId;
              news.news_id = newsCreated.id;
              models.news.news.create(news)
                .then((entityNews) => {
                  if (_.isEmpty(entityNews)) {
                    reject(new Error('News was inserted into the news_data '
                    + 'table, but the association of news data with entity'
                    + ' could not be created.'));
                  } else {
                    resolve(entityNews);
                  }
                });
            }
          });
      }
    });
});

module.exports = newsMethods;
