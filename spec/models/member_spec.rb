require 'rails_helper'

RSpec.describe Member, type: :model do
  it {should validate_presence_of(:name)}
  it {should validate_presence_of(:role)}
  it {should validate_presence_of(:email)}
  it {should validate_presence_of(:github)}

  it {should_not allow_value('test@test').for :email}
  it {should_not allow_value('test').for :email}
  it {should allow_value('test@test.com').for :email}
  it {should allow_value('test+test@test.com').for :email}

end
