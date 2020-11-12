class Project
    attr_reader :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        all_backers = ProjectBacker.all.select { |kickstarter| kickstarter.project == self }
        all_backers.collect { |projects| projects.backer }
    end
end