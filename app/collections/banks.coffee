Bank = require 'models/bank'

class Banks extends Collection
  model: Bank
  localStorage: new Store('banks')

  comparator: 'title'

  fetch: ->
    super
    @create 
      title: 'Crédit Agricole Charente Périgord'
      description: 'Best bank of the world'
    
# Instance of banks' collection (singleton)
module.exports = new Banks