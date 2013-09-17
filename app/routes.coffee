module.exports = (match) ->
  regNum = ->
   obj = {}
   obj[field] = /^\d+$/ for field in arguments
   obj
  
  match '', 'default#home'
  match 'about', 'default#about'
  match 'contact', 'default#contact'

  ##
  # Exemples
  # 
  
  # -- Memo --
  # index: fetch => list ressources
  # show: fetch/:id => list one ressource
  # remove: destroy => destroy ressource
  # edit: update/:id => update ressource

  # index => GET /resources
  # show => GET /resources/:id
  # edit => PUT /resources/:id
  # create => POST /resources
  # remove => DELETE /resources/:id 

  # Task manager
  match 'exemples/tasks', 'exemples/tasks#index'
  match 'exemples/tasks/new', 'exemples/tasks#create'
  match 'exemples/tasks/:id', 'exemples/tasks#show', constraints: {id: /^\d+$/}
  match 'exemples/tasks/:id/edit', 'exemples/tasks#edit', constraints: {id: /^\d+$/}

  match 'banks', 'managements/banks#index'
  # match 'banks/:bank_id/accounts', 'account#index', constraints: regNum('bank_id')
  # match 'banks/:bank_id/accounts/:account_id/transactions', 'transaction#index', constraints: regNum('bank_id', 'account_id')
  