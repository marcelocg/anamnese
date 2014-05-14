require 'spec_helper'

describe "pacientes/show" do
  before(:each) do
    @paciente = assign(:paciente, stub_model(Paciente,
      :nome => "Nome",
      :email => "Email",
      :telefone => "Telefone",
      :sexo => "Sexo",
      :estado_civil => "Estado Civil",
      :profissao => "Profissao",
      :trabalha => false,
      :tipo_sanguineo => "Tipo Sanguineo",
      :fumante => false,
      :etilista => false,
      :cirurgias => "MyText",
      :doencas_paternas => "MyText",
      :doencas_maternas => "MyText",
      :historico_peso => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nome/)
    rendered.should match(/Email/)
    rendered.should match(/Telefone/)
    rendered.should match(/Sexo/)
    rendered.should match(/Estado Civil/)
    rendered.should match(/Profissao/)
    rendered.should match(/false/)
    rendered.should match(/Tipo Sanguineo/)
    rendered.should match(/false/)
    rendered.should match(/false/)
    rendered.should match(/MyText/)
    rendered.should match(/MyText/)
    rendered.should match(/MyText/)
    rendered.should match(/MyText/)
  end
end
