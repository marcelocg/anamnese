require 'spec_helper'

describe "pacientes/new" do
  before(:each) do
    assign(:paciente, stub_model(Paciente,
      :nome => "MyString",
      :email => "MyString",
      :telefone => "MyString",
      :sexo => "MyString",
      :estado_civil => "MyString",
      :profissao => "MyString",
      :trabalha => false,
      :tipo_sanguineo => "MyString",
      :fumante => false,
      :etilista => false,
      :cirurgias => "MyText",
      :doencas_paternas => "MyText",
      :doencas_maternas => "MyText",
      :historico_peso => "MyText"
    ).as_new_record)
  end

  it "renders new paciente form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", pacientes_path, "post" do
      assert_select "input#paciente_nome[name=?]", "paciente[nome]"
      assert_select "input#paciente_email[name=?]", "paciente[email]"
      assert_select "input#paciente_telefone[name=?]", "paciente[telefone]"
      assert_select "input#paciente_sexo[name=?]", "paciente[sexo]"
      assert_select "input#paciente_estado_civil[name=?]", "paciente[estado_civil]"
      assert_select "input#paciente_profissao[name=?]", "paciente[profissao]"
      assert_select "input#paciente_trabalha[name=?]", "paciente[trabalha]"
      assert_select "input#paciente_tipo_sanguineo[name=?]", "paciente[tipo_sanguineo]"
      assert_select "input#paciente_fumante[name=?]", "paciente[fumante]"
      assert_select "input#paciente_etilista[name=?]", "paciente[etilista]"
      assert_select "textarea#paciente_cirurgias[name=?]", "paciente[cirurgias]"
      assert_select "textarea#paciente_doencas_paternas[name=?]", "paciente[doencas_paternas]"
      assert_select "textarea#paciente_doencas_maternas[name=?]", "paciente[doencas_maternas]"
      assert_select "textarea#paciente_historico_peso[name=?]", "paciente[historico_peso]"
    end
  end
end
