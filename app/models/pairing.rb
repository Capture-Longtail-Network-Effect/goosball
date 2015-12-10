class Pairing < ActiveRecord::Base
	attr_accessor :member_1, :member_2

    def to_s
        m1_name = Member.find(members_ids[0]).name
        m2_name = Member.find(members_ids[1]).name
        "#{m1_name} + #{m2_name}"
    end
end
