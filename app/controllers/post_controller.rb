require 'rubygems'

class PostController < ApplicationController
  before_action :gen_int, :gen_date, :gen_post_body

  def gen_date
    @rand_date = Time.at(Time.local(2010, 1, 1) + rand * (Time.now.to_f - Time.local(2010, 1, 1).to_f)).strftime('%F %m:%d')
  end

  def gen_post_body
    # cannot load such file -- faker.rb
    paragraph = 'I tried adding two diffrent gems for random text generation but always got this error: cannot load such file -- faker.rb. This problem is really strange because adding same gems worked in ruby but not in rails. ' * rand(2..5)
    @rand_body = (paragraph + "\n\n") * rand(1..5)
  end

  def gen_int
    @rand_int = rand(0..100)
  end
end
