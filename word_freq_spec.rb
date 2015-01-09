require('word_freq')
require('rspec')
require('sinatra')
require('pry')


describe('String#word_freq') do
  it("takes the input of a user's singular word, as well as another word, and gives the numberical value of one if they are the same") do
    expect(("the").word_freq("the")).to(eq(1))
  end

  it("takes the input of a user's singular word, as well as a separate sentence, and returns the numerical value zero") do
    expect(("moon").word_freq("the dog goes home at night")).to(eq(0))
  end

  it("takes the input of a user's singular word, as well as a separate sentence, then returns a numerical value of how many times the user's original word appeared in the sentence.") do
    expect(("very").word_freq("The moon comes out when the moon wants to")).to(eq(0))
  end

  it("takes the input of a user's singular word, as well as a separate sentence, then returns a numerical value of how many times the user's original word appeared in the sentence.") do
    expect(("moon").word_freq("The moon comes out when the moon wants to")).to(eq(2))
  end
end
