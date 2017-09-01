class DrugAdministration < ActiveRecord::Base
    belongs_to :patient
    belongs_to :medication
end
