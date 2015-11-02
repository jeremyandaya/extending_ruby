require 'mandrill'

m = Mandrill::API.new
message = {  
	:subject => "Learn to Code!",  
	:from_name => "Jeremy",  
	:text =>"Hello there, how are you?",  
	:to =>[{ :email => "ehtesh@nycda.com", :name => "#{name}"}],  
	:html =>"<html><h1>Thank you for inquiring!</h1></html>",  
	:from_email=>"jeremy@learntocode.org" 
} 

sending = m.messages.send message 
puts sending