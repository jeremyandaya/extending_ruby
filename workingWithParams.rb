require "sinatra"

set :bind, "0.0.0.0"

get "/" do 
	"params: #{params}"
	"Hi, #{params[:firstname]} #{params[:firstname]}"
end

get "/come" do
	"Come Over Here, #{params[:slithy]}"
end

get "/split" do
	# pass in as params[:sentence]
	# return the number of words of the sentence.

	"Number of sentence is #{params[:sentence]}"

	# sentence = "This is my sentence for testing and debugging."

	# sentence.split().length.to_s
end