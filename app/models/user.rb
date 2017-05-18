require 'digest/sha1'
class User < ApplicationRecord
	attr_accessor :password
	#attr_accessible :firstname,:lastname, :email, :password, :password_confirmation
	#EMAIL_REGEX = /^[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}$/i
	validates :firstname, :presence => true, :length => { :in => 3..20 }
	validates :lastname, :presence => true, :length => { :in => 3..20 }
	validates :email, :presence => true, :uniqueness => true
	validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
	validates :password, :confirmation => true #password_confirmation attr
	validates_length_of :password, :in => 6..20, :on => :create


	before_save :encrypt_password
	after_save :clear_password
	def encrypt_password
	  if password.present?
	    self.encrypted_password= Digest::SHA1.hexdigest(password)
	  end
	end
	def clear_password
	  self.password = nil
	end



	def self.authenticate(email, password)
		user = find_by(email: email)
		if user && user.encrypted_password == Digest::SHA1.hexdigest(password)
		  user
		else
		  nil
		end
	end


end
