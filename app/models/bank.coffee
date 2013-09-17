module.exports = class Bank extends Model
  localStorage: new Store('banks')
  # url: 'http://weightbank-api.com/banks' # if used with api

  defaults:
    title: "untitled bank"
    description: ""
   
  timestamps: true