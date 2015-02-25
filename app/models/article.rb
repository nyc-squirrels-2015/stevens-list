class Article < ActiveRecord::Base
  belongs_to :category
  after_save :generate_token

  validates :category, presence: true
  validates :title, presence: true



  private

  def generate_token
    if !token
      token = (('a'..'z').to_a << (0..9).to_a).flatten.shuffle[0,29].join + id.to_s(36)
      self.update_attribute(:token, token)
    end
  end

end