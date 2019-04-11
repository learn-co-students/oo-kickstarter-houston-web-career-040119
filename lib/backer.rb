

class Backer
    
    
    attr_accessor :name, :backed_projects
    
    @@all =[]

    
    def initialize(name)
        @name = name
        @backed_projects = []
        @@all.push(self)
    end
    
    def self.all
        @@all = []
    end
    
    def back_project(project)
        self.backed_projects.push(project)
        project.backers.push(self)
    end    
    
    
end