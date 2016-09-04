class User < ActiveRecord::Base
    has_secure_password
    validates :name, presence: true, length: {maximum: 50}
  #  validates :password, presence: true, length: {minimum: 6}
    VALID_EMAIL_FORMAT= /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
    validates :email, presence: true, length: {maximum: 260}, format: { with: VALID_EMAIL_FORMAT}, uniqueness: {case_sensitive: false}
    before_create :generate_token
    before_save { self.email = email.downcase }

    def generate_token
      self.confirmation_token = SecureRandom.urlsafe_base64
    end

    def confirm!
      return if confirmed?

      self.confirmed_at = Time.current
      self.confirmation_token = ''
      save!
    end

    def confirmed?
      confirmed_at.present?
    end

end
