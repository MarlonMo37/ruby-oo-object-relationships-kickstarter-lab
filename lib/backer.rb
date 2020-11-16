class Backer

    attr_reader :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        backer = ProjectBacker.all.select {|b| b.backer == self}
        backer.map {|p| p.project}
    end

end