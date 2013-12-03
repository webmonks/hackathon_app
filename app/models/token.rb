class Token
  include Mongoid::Document

  field :name,       type:String
  field :voted,      type:Boolean

  validates_uniqueness_of :name
  validates_presence_of :name

  belongs_to :project

  def not_used?
    ! used?
  end

  def used?
    project.present?
  end
end
