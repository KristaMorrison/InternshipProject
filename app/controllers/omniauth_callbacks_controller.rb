class OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def all
    student = Student.from_omniauth(request.env["omniauth.auth"])
    if student.persisted?
      flash[:notice] = "Signed In!"
      sign_in_and_redirect student
    else
      session["diecise.student_attributes"] = student.attributes
      redirect_to '/students/show'
    end
  end
  alias_method :linkedin, :all
end
