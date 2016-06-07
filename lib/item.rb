class Item < ActiveRecord::Base
  validates_presence_of :list_id, :name
  validates_uniqueness_of :name, scope: :list_id
  validate :due_date_is_in_the_future
  belongs_to :user

  def due_date_is_in_the_future
    if due_date.present? && due_date < Date.today
      errors.add :due_date, "Cannot be from the past"
    end
  end


  def done?
    done_at.present?
  end

  def mark_complete
    self.done_at = Time.now
    save!
  end
end
