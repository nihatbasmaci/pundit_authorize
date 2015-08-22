# encoding: utf-8
class ApplicationPolicy
  attr_reader :user, :record
 
  def initialize(user, record)
    @user = user
    @record = record
  end
 
  def scope
    Pundit.policy_scope!(user, record.class)
  end
 
  def index?
    (user.admin?) ? true : false
    #(user.admin? || user.editor? || user.author? || user.contributor?) ? true : false
  end
 
  def new?
    #(user.admin? || user.editor? || user.author?) ? true : false
  end
 
  def create?
    #(user.admin? || user.editor? || user.author?) ? true : false
  end
 
  def edit?
    #(user.admin? || user.editor?) ? true : false
  end
 
  def update?
    #(user.admin? || user.editor?) ? true : false
  end
 
  def destroy?
    
  end
end