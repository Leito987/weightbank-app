BanksItemView = require 'views/managements/banks/item'

module.exports = class BanksList extends CollectionView
  itemView: BanksItemView
  listSelector: '.task-list'
  template: require 'templates/managements/banks/index'
