require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('pry')
require('./lib/word_freq')

get('/') do
  erb(:comparison)
end

get('/results') do
  @u_word = params.fetch('input_word')
  @u_string = params.fetch('input_string')
  @result = @u_word.word_freq(@u_string)  
  erb(:results)
end
