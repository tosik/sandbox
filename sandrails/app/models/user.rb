class User < ActiveRecord::Base
  def happy?
    money >= 2000
  end
end
