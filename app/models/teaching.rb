class Teaching < ApplicationRecord
  belongs_to :category

  def reorder
    topics.split(',').map(&:to_i).collect do |x|
      x > 11 ? (x - 1).to_s : x.to_s
    end.join(',')
  end
end
