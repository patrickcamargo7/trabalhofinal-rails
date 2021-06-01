class Type < ApplicationRecord
  def to_label
    description
  end
end
