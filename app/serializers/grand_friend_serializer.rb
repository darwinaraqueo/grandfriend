class GrandFriendSerializer < ActiveModel::Serializer
  attributes :id, :picture, :full_name, :age, :visits, :asylum

  def full_name
  "#{object.first_name} #{object.last_name}"
  end

  def age
    Time.zone.now.year - object.birthdate.year
  end

  def visits
    object.visits.size
  end

  def asylum
    'Hogar Madrid'
  end
end
