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
  tweet.split(' ').map do |word|
    dictionary(word)
  end.join(' ')
end

def bulk_tweet_shortener (tweets)
  tweets.map do |tweet|
    puts word_substituter(tweet.locase)
  end
end

def selective_tweet_shortener (tweet)
  if (tweet.size > 140 && tweet.size < 130 == false)
    tweet.chars[0...140].join
  end
end
