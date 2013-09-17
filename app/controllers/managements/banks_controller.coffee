LayoutView  = require 'views/layout'
HeaderView  = require 'views/layout/header'
FooterView  = require 'views/layout/footer'
BanksListView = require 'views/managements/banks/list'
banksCollection = require 'collections/banks'

module.exports = class StaticController extends Controller

  beforeAction: (params, route)->
    @compose 'layout', LayoutView
    @compose 'header', HeaderView, {region: 'header', routeName: route.name}
    @compose 'footer', FooterView, region: 'footer'

    # Refresh tasks from database
    banksCollection.fetch()

  index: (params)->
    @view = new BanksListView 
      region: 'main'
      collection: banksCollection
     
  show: ->

  create: ->

  edit: ->