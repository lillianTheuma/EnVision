class AddNameToQuestions < ActiveRecord::Migration[5.2]
  def change
    add_column(:questions, :name, :string)
  end
end
