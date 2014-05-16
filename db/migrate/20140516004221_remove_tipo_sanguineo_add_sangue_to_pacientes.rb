class RemoveTipoSanguineoAddSangueToPacientes < ActiveRecord::Migration
  def change
    remove_column :pacientes, :tipo_sanguineo, :string
    add_column :pacientes, :sangue, :integer
  end
end
