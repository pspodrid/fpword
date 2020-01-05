require('sinatra')
require('sinatra/reloader')
require('./lib/word')
require('pry')
also_reload('lib/**/*.rb')

require('sinatra')

get('/') do
  @words = Word.all
  erb(:words)
end

get('/word') do
  @words = Word.all
  erb(:words)
end

get('/word/new') do
  erb(:new_word)
end

get('/word/:id') do
  "This route will show a specific album based on its ID. The value of ID here is #{params[:id]}."
end

post('/word') do
  name = params[:word_name]
  word = Word.new(name, nil)
  word.save()
  @albums = Album.all()
  erb(:words)
end

get('/word/:id/edit') do
  "This will take us to a page with a form for updating an album with an ID of #{params[:id]}."
end

patch('/word/:id') do
  "This route will update an album. We can't reach it with a URL. In a future lesson, we will use a form that specifies a PATCH action to reach this route."
end

delete('/word/:id') do
  "This route will delete an album. We can't reach it with a URL. In a future lesson, we will use a delete button that specifies a DELETE action to reach this route."
end
