require('sinatra')
require('sinatra/reloader')
require('./lib/contacts')
require('./lib/addresses')
require('./lib/emails')
require('./lib/phones')
require('./lib/soc_medias')
also_reload('lib/**/*.rb')

get('/') do
  @all_contacts = Contacts.all
  erb(:index)
end

get('/contacts') do
  @contacts = Contacts.all
end

get('/add_contact') do
  erb(:add_contact)
end

post('/new_contact') do
  name = params.fetch('name')
  job = params.fetch('job')
  company = params.fetch('company')
  @contact = Contacts.new(name).save
  @all_contacts = Contacts.all


  # @street = params.fetch()
  # @city_state_zip = params.fetch()
  # @address_type = params.fetch()
  # @area_code = params.fetch()
  # @number = params.fetch()
  # @number_type = params.fetch()
  # @email = params.fetch()
  # @facebook = params.fetch()
  # @linked_in = params.fetch()
  erb(:index)
end
