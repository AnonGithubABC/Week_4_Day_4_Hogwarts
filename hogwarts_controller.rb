require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )
require_relative( './models/student.rb' )

# INDEX ROUTE
get('/students') do
  @students = Student.all()
  erb(:index)
end

get('/students/new') do
  erb(:new)
end

get('/students/:id') do
  id = params[:id]
  @student = Student.find(id)
  erb(:show)
end
