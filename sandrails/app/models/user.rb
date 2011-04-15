class User < ActiveRecord::Base
  def happy?
    money >= 10000
  end
end
