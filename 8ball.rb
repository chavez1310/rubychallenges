require 'rubygems'
require 'twilio-ruby'

account_sid = 'AC1829abeb53034034ec5715d60f1b3296'
auth_token = 'a0f556b378b7979e2a58cf6b1b738808'

@client = Twilio::REST::Client.new account_sid, auth_token

def magic
  replies = ['It is certain', 'It is decidedly so', 'Without a doubt', 'Yes definitely', 'You may rely on it', 'As I see it, yes', 'Most likely', 'Outlook good', 'Yes', 'Signs point to yes', 'Reply hazy try again', 'Ask again later', 'Better not tell you now', 'Cannot predict now', 'Concentrate and ask again', 'Dont count on it', 'My reply is no', 'My sources say no', 'Outlook not so good', 'Very doubtful']
  random_answer = replies.sample  
end

puts "Do you have a question young padawan?."
question = gets
answer = magic

message = @client.account.messages.create(
  :from => "+17082653687",
  :to => "+1 7084419208",
  :body => answer
)

puts "Here is the answer!"