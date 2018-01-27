require "sinatra"
if development?
  require "sinatra/reloader"
end
require "./caesar.rb"

get "/" do 
  @input_text = params["input_text"]
  @shift = params["shift"]
  if !@input_text.nil? && !@shift.nil?
    @output_text = caesar(@input_text,@shift)
  else
    @output_text = ""
  end
  erb :caesar_form
end