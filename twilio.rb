require 'rubygems'
require 'twilio-ruby'

account_sid = "AC1829abeb53034034ec5715d60f1b3296"
auth_token = "a0f556b378b7979e2a58cf6b1b738808"

@client = Twilio::REST::Client.new(account_sid, auth_token)

message = @client.account.messages.create(
  :from => "+17082653687", 
  :to =>"+17084419208", 
  :body => "hola mom!"
)
 
puts message.to