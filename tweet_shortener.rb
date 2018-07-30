# Write your code here.
def dictionary (word)
  dict = {
    "hello" => 'hi',
    'to' => 2,
    'two' => 2,
    'too' => 2,
    'four' => 4,
    'for' => 4,
    'be' => 'b',
    'you' => 'u',
    'at' => '@',
    'and' => '&'
  }
  dict[word] || word
end
def word_substituter (tweet)
  tweet.to_s.split(' ').map do |word|
    dictionary(word)
  end.join(' ')
end

def bulk_tweet_shortener (tweet)
  # puts tweet.chars[0...140].join
  word_substituter(tweet)
end

