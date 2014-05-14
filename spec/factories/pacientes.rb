# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :paciente do
    nome "MyString"
    email "MyString"
    telefone "MyString"
    data_nascimento "2014-05-14"
    sexo "MyString"
    estado_civil "MyString"
    profissao "MyString"
    trabalha false
    tipo_sanguineo "MyString"
    fumante false
    etilista false
    cirurgias "MyText"
    doencas_paternas "MyText"
    doencas_maternas "MyText"
    historico_peso "MyText"
  end
end
