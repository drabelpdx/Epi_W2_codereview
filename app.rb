require('sinatra')
require('sinatra/reloader')
require('./lib/word')
require('./lib/definition')
also_reload('lib/**/*.rb')

get('/') do
  @words = Word.all()
  erb(:index)
end

post('/word') do
  name = params.fetch('name')
  Word.new(name).save()
  @words = Word.all()
  erb(:index)
end

get('/word/:id') do
  @word = Word.find(params.fetch('id').to_i())
  erb(:word)
end

get('/definition/:id') do
  @definition = Definition.find(params.fetch('id').to_i())
  @definitions = Definition.all()
  erb(:word)
end

post('/definition') do
  name = params.fetch('name')
  @definition = Definition.new(name)
  @definition.save()
  @word = Word.find(params.fetch('word_id').to_i())
  @word.add_definition(@definition)
  erb(:word)
end
