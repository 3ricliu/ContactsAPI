class Contact < ActiveRecord::Base
  validates :name, :presence => true, :uniqueness => true
  validates :email, :presence => true, :uniqueness => {:scope => :user_id}
  validates :user_id, :presence => true, :uniqueness => {:scope => :email}

  belongs_to(
    :user,
    foreign_key: :user_id,
    primary_key: :id,
    class_name: "User"
  )

  has_many :contact_shares,
    foreign_key: :contact_id,
    primary_key: :id,
    class_name: 'ContactShare'

  has_many :shared_users,
    through: :contact_shares,
    source: :user

end
