class User < ActiveRecord::Base
  def happy?
    money >= 1000
  end
end
