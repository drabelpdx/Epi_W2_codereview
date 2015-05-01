require('sinatra')
require('sinatra/reloader')
require('./lib/word')
require('./lib/definition')
also_reload('lib/**/*.rb')

get('/') do
@words = Word.all()
  erb(:index)
end

# get('/word') do
#   erb(:word)
# end

post('/word') do
name = params.fetch('name')
Word.new(name).save()
@words = Word.all()
erb(:index)
end

# get('/definition') do
#   erb(:word)
# end
