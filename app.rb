require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')

require('sinatra')

get('/') do
  "This will be our home page. '/' is always the root route in a Sinatra application."
end

get('/word') do
  "This route will show a list of all albums."
end

get('/word/new') do
  "This will take us to a page with a form for adding a new album."
end

get('/word/:id') do
  "This route will show a specific album based on its ID. The value of ID here is #{params[:id]}."
end

post('/word') do
  "This route will add an album to our list of albums. We can't access this by typing in the URL. In a future lesson, we will use a form that specifies a POST action to reach this route."
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
