class Project
  attr_accessor :title, :backers

  def initialize(title)
    @title = title
    @backers = []
  end

  def add_backer(backer)
    @backers << backer if backer.class == Backer
    backer.back_project(self) if !backer.backed_projects.include?(self)
  end
end