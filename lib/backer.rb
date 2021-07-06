class Backer

  attr_accessor :name
  attr_reader :backed_projects

  @@all = []

  def initialize (name)
    @name = name
    @@all << self
  end

  def back_project(project)
    #accepts a Project as an argument and stores it in a backed_projects array
    #also adds the backer to the projects backers array
    Joiner.new(project,self)
  end

  def backed_projects
    arr = Joiner.all.select {|joiner| joiner.backer.name == self.name}
    arr = arr.map {|joiner| joiner.project}
    arr.uniq
  end

  def self.all
    #return an array of all backers
    @@all
  end

end
