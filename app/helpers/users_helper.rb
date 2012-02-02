module UsersHelper
  
  def gravatar_for(user, options = { :size => 50})
    lenom = :name.to_s
    teh_mail = :email.to_s
    gravatar_image_tag(teh_mail.downcase, :alt => lenom, :class => 'gravatar', :gravatar => options)
  end
  
end
