require_relative 'zz-joiner.rb'

class Project

  attr_accessor :title
  attr_reader :backers

  @@all = []

  def initialize (title)
    @title = title
    @@all << self
  end

  def add_backer(backer)
    #accepts a Backer as an argument and stores it in a backers array
    #also adds the project to the backed projects array
    Joiner.new(self,backer)
  end

  def backers
    arr = Joiner.all.select {|joiner| joiner.project.title == self.title}
    arr = arr.map {|joiner| joiner.backer}
    arr.uniq
  end

  def self.all
    #return an array of all projects
    @@all
  end

end
