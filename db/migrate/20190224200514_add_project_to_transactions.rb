class AddProjectToTransactions < ActiveRecord::Migration[5.2]
  def change
    add_reference :transactions, :project, index: true
  end
end
