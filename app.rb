require "sinatra"

# puts "I'm in an app"

quotes = ("a".."z").to_a
letters = ("a".."z").to_a
realQuotes = ["Hello World!", "This is awesome!", "What did you say?", "This is a test.", "I don't know anymore."]

get "/" do
	"Hello, nurse."
end

get "/all" do
	all = ""

	letters.each do |q|
		all += q
	end
	all
end

get "/quote" do
	# without using quotes.sample
	# [:foo, :bar].sample # => :foo, or :bar :-)
	# rand(...)
	randomLet = quotes[rand(quotes.size)]
	"Random letter is: #{randomLet}"

	randomIndex = rand(letters.length)
	letters[randomIndex].to_s
end

get "/twoquotes" do
	# how to get 2 quotes that are guaranteed not the same?
end







