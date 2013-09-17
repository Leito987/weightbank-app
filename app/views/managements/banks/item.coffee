module.exports = class BanksItem extends View
  template: require 'templates/managements/banks/item'
  className: 'form-group'

  listen:
    'change model': 'render' # we listen to the change event on the model
                             # and re-render the view

