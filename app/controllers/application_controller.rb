class ApplicationController < Sinatra::Base

  configure do
  	set :views, "app/views"
  	set :public_dir, "public"
  end

  get "/" do
  	erb :index
  end
end

class Dog
  attr_accessor :name, :breed, :age

  @@all_dogs = []

  def initialize (name, breed, age)
    @name = name
    @breed = breed
    @age = age
    @@all_dogs << self
  end

  def self.all
    @@all_dogs
  end

end
