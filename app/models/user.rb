class User < ApplicationRecord
    before_save { self.email = email.downcase }
    validates :name, presence: true, length: { maximum: 50 }
    validates :phone, presence: true, length: { maximum: 100 },
                                      uniqueness: { case_sensitive: false }
    validates :email, presence: true, length: { maximum: 255 }
    validates :company_type, presence: true
    validates :company_name, presence: true
    validates :ref_example, presence: true
    validates :deadline, presence: true
    validates :money, presence: true
end
