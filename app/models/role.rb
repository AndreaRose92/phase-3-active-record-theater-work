class Role < ActiveRecord::Base

    has_many :auditions

    def auditions
        Audition.where role_id: self.id
    end

   
    def actors
        self.auditions.pluck :actor
    end

    
    def location
        self.auditions.pluck :location
    end

    
    def lead
        actors = self.auditions.where(hired: true)
        actors.exists? ? actors.first : "no actor has been hired for this role"
    end

    
    def understudy
        actors = self.auditions.where(hired: true)
        actors.length >= 2 ? actors.second : "'no actor has been hired for understudy for this role"
    end
end