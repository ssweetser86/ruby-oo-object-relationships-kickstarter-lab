class Backer
    attr_reader :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        all_projects = ProjectBacker.all.select { |kickstarter| kickstarter.backer == self }
        all_projects.collect { |backers| backers.project }
    end
end