class CreatePacientes < ActiveRecord::Migration
  def change
    create_table :pacientes do |t|
      t.string :nome
      t.string :email
      t.string :telefone
      t.date :data_nascimento
      t.string :sexo
      t.string :estado_civil
      t.string :profissao
      t.boolean :trabalha
      t.string :tipo_sanguineo
      t.boolean :fumante
      t.boolean :etilista
      t.text :cirurgias
      t.text :doencas_paternas
      t.text :doencas_maternas
      t.text :historico_peso

      t.timestamps
    end
  end
end
