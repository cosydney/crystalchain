class User < ApplicationRecord
  attr_accessor :email, :first_name, :last_name
  validates_presence_of :email, :first_name, :last_name


  scope :filter_by_last_name, -> (last_name) { where(last_name: [*last_name]) }
  scope :filter_by_first_name, -> (first_name) { where(first_name: [*first_name]) }
    scope :filter_by_email, -> (email) { where(email: [*email]) }

  def self.filter(params)
    users = params[:user_ids].present? ? User.find(params[:user_ids]) : User.all
    users = users.filter_by_last_name(params[:last_name]) if params[:last_name].present?
    users = users.filter_by_first_name(params[:first_name]) if params[:first_name].present?
    users = users.filter_by_email(params[:email]) if params[:email].present?
    users
  end
end
