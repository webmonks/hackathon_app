class Project
  include Mongoid::Document

  field :name,              type: String
  field :description,       type: String

  validates_presence_of :name, :description

  has_many :tokens

  def vote(token)
    if token.blank?
      tokens << token
      save!
    end
  end

end
