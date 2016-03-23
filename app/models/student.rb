class Student < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable, :omniauth_providers => [:linkedin]

  def self.from_omniauth(auth)
    student = Student.new
    student.provider = auth.provider
    student.uid = auth.uid
    student.name = auth.info.name
    student.email = auth.info.email
    student.save
    student
  end

  def password_required?
    super && provider.blank?
  end


end
