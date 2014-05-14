require 'spec_helper'

describe "pacientes/index" do
  before(:each) do
    assign(:pacientes, [
      stub_model(Paciente,
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
      ),
      stub_model(Paciente,
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
      )
    ])
  end

  it "renders a list of pacientes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Telefone".to_s, :count => 2
    assert_select "tr>td", :text => "Sexo".to_s, :count => 2
    assert_select "tr>td", :text => "Estado Civil".to_s, :count => 2
    assert_select "tr>td", :text => "Profissao".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Tipo Sanguineo".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
