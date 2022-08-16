class Audition < ActiveRecord::Base

    belongs_to :role

    def role
        Role.find(self.role_id)
    end

end