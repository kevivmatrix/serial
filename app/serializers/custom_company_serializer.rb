class CustomCompanySerializer < ActiveModel::Serializer
  attributes :id, :name, :founded, :founded_ago

  def founded_ago
    scope.distance_of_time_in_words(Time.now-founded.to_time)
  end
end
