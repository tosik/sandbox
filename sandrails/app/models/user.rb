class User < ActiveRecord::Base
  def happy?
    money >= 190000
  end
end
