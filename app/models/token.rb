class Token
  include Mongoid::Document

  field :name,       type:String

  validates_uniqueness_of :name
  validates_presence_of :name

  belongs_to :project

  def used?
    project.present?
  end
end
