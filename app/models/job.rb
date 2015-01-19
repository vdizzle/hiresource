class Job < ActiveRecord::Base
  belongs_to :recruiter
  belongs_to :job
end
