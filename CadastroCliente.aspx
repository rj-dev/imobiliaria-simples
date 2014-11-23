<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="CadastroCliente.aspx.cs" Inherits="CadastroCliente" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="Server">

    <style>
        td {
            padding: 0em 0em 0em 0em;
            border: 0 none;
        }
    </style>

    <script>
        function estadoCivil(ddl) {

            if (ddl.value == "so" | ddl.value == "") {
                $('#divDadosConjuge').slideUp();
            } else {
                $('#divDadosConjuge').slideDown();
            }
        }
    </script>

    <hgroup class="title">
        <h1><%: Title %>.</h1>
        <h2>Cadastro de Clientes</h2>
    </hgroup>

    <fieldset>
        <legend>Cadastro de Clientes</legend>

        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataSourceID="SqlDataSource1" DefaultMode="Insert" OnItemInserting="DetailsView1_OnItemInserting">
            <Fields>
                <%--<asp:BoundField DataField="codigo_imobiliaria" HeaderText="codigo_imobiliaria" ReadOnly="True" SortExpression="codigo_imobiliaria" />
                <asp:BoundField DataField="pessoa_fisica" HeaderText="pessoa_fisica" ReadOnly="True" SortExpression="pessoa_fisica" />
                <asp:BoundField DataField="razao" HeaderText="razao" ReadOnly="True" SortExpression="razao" />
                <asp:BoundField DataField="fantasia" HeaderText="fantasia" ReadOnly="True" SortExpression="fantasia" />
                <asp:BoundField DataField="cnpj_cpf" HeaderText="cnpj_cpf" ReadOnly="True" SortExpression="cnpj_cpf" />
                <asp:BoundField DataField="ie_rg" HeaderText="ie_rg" ReadOnly="True" SortExpression="ie_rg" />
                <asp:BoundField DataField="imunicipal" HeaderText="imunicipal" ReadOnly="True" SortExpression="imunicipal" />
                <asp:BoundField DataField="endereco" HeaderText="endereco" ReadOnly="True" SortExpression="endereco" />
                <asp:BoundField DataField="numero" HeaderText="numero" ReadOnly="True" SortExpression="numero" />
                <asp:BoundField DataField="complemento" HeaderText="complemento" ReadOnly="True" SortExpression="complemento" />
                <asp:BoundField DataField="bairro" HeaderText="bairro" ReadOnly="True" SortExpression="bairro" />
                <asp:BoundField DataField="cidade" HeaderText="cidade" ReadOnly="True" SortExpression="cidade" />
                <asp:BoundField DataField="nextel" HeaderText="nextel" ReadOnly="True" SortExpression="nextel" />
                <asp:BoundField DataField="celular" HeaderText="celular" ReadOnly="True" SortExpression="celular" />
                <asp:BoundField DataField="telefone" HeaderText="telefone" ReadOnly="True" SortExpression="telefone" />
                <asp:BoundField DataField="pais" HeaderText="pais" ReadOnly="True" SortExpression="pais" />
                <asp:BoundField DataField="cep" HeaderText="cep" ReadOnly="True" SortExpression="cep" />
                <asp:BoundField DataField="estado" HeaderText="estado" ReadOnly="True" SortExpression="estado" />
                <asp:BoundField DataField="email" HeaderText="email" ReadOnly="True" SortExpression="email" />
                <asp:BoundField DataField="site" HeaderText="site" ReadOnly="True" SortExpression="site" />
                <asp:BoundField DataField="observacao" HeaderText="observacao" ReadOnly="True" SortExpression="observacao" />
                <asp:BoundField DataField="estado_civil" HeaderText="estado_civil" ReadOnly="True" SortExpression="estado_civil" />
                <asp:BoundField DataField="nascimento" HeaderText="nascimento" ReadOnly="True" SortExpression="nascimento" />
                <asp:BoundField DataField="conjuge_nome" HeaderText="conjuge_nome" ReadOnly="True" SortExpression="conjuge_nome" />
                <asp:BoundField DataField="conjuge_rg" HeaderText="conjuge_rg" ReadOnly="True" SortExpression="conjuge_rg" />
                <asp:BoundField DataField="conjuge_orgao" HeaderText="conjuge_orgao" ReadOnly="True" SortExpression="conjuge_orgao" />
                <asp:BoundField DataField="conjuge_cpf" HeaderText="conjuge_cpf" ReadOnly="True" SortExpression="conjuge_cpf" />
                <asp:BoundField DataField="conjuge_nascimento" HeaderText="conjuge_nascimento" ReadOnly="True" SortExpression="conjuge_nascimento" />
                <asp:BoundField DataField="conjuge_email" HeaderText="conjuge_email" ReadOnly="True" SortExpression="conjuge_email" />--%>
                <asp:TemplateField>
                    <InsertItemTemplate>
                        <ol style="padding: 0em 0em 0em 0em">
                            <li>
                                <asp:TextBox ID="txtRazaoSocial" runat="server" Text='<%#Bind("razao")%>' placeholder="Razão Social"></asp:TextBox>
                                <asp:TextBox ID="txtNomeFantasia" runat="server" Text='<%#Eval("fantasia")%>' placeholder="Nome Fantasia"></asp:TextBox>
                                <asp:TextBox ID="txtCpfCnpj" runat="server" Text='<%#Eval("cnpj_cpf")%>' placeholder="CPF/CNPJ"></asp:TextBox>

                            </li>
                            <li>

                                <asp:TextBox ID="txtRgIe" runat="server" Text='<%#Eval("ie_rg")%>' placeholder="Rg/IE"></asp:TextBox>
                                <asp:TextBox ID="txtIMunicipal" runat="server" Text='<%#Eval("imunicipal")%>' placeholder="IMunicipal"></asp:TextBox>
                                <asp:TextBox ID="txtDataNascimento" runat="server" Text='<%#Eval("nascimento")%>' placeholder="Data de Nascimento" onkeypress="return Mascaras(event, 'DATA', this.id);" MaxLength="10"></asp:TextBox>

                            </li>
                            <li>
                                <asp:TextBox ID="txtCelular" runat="server" Text='<%#Eval("celular")%>' placeholder="Celular" onkeypress="return Mascaras(event, 'FONE', this.id);" MaxLength="15"></asp:TextBox>
                                <asp:TextBox ID="txtTelefone" runat="server" Text='<%#Eval("telefone")%>' placeholder="Telefone" onkeypress="return Mascaras(event, 'FONE', this.id);" MaxLength="15"></asp:TextBox>

                                <asp:TextBox ID="txtNextel" runat="server" Text='<%#Eval("nextel")%>' placeholder="ID Nextel"></asp:TextBox>

                            </li>
                            <li>

                                <asp:TextBox ID="txtEmail" runat="server" Text='<%#Eval("email")%>' placeholder="Email"></asp:TextBox>
                                <asp:TextBox ID="txtEndereco" runat="server" Text='<%#Eval("endereco")%>' placeholder="Endereço"></asp:TextBox>
                                <asp:TextBox ID="txtNumero" runat="server" Text='<%#Eval("numero")%>' placeholder="Numero"></asp:TextBox>
                            </li>
                            <li>

                                <asp:TextBox ID="txtComplemento" runat="server" Text='<%#Eval("complemento")%>' placeholder="Complemento"></asp:TextBox>
                                <asp:TextBox ID="txtBairro" runat="server" Text='<%#Eval("bairro")%>' placeholder="Bairro"></asp:TextBox>
                                <asp:TextBox ID="txtCep" runat="server" Text='<%#Eval("cep")%>' placeholder="Cep" onkeypress="return Mascaras(event, 'CEP', this.id);" MaxLength="9"></asp:TextBox>

                            </li>
                            <li>
                                <asp:DropDownList ID="ddlEstado" runat="server" Width="312" Height="29" placeholder="Estado" />
                                <asp:DropDownList ID="ddlCidade" runat="server" Width="312" Height="29" placeholder="Cidade" />
                                <asp:DropDownList ID="ddlEstadoCivil" runat="server" Width="312" Height="29" placeholder="Estado" onchange="estadoCivil(this)">
                                    <asp:ListItem Text="Estado Civil" Value=""></asp:ListItem>
                                    <asp:ListItem Text="Solteiro(a)" Value="so"></asp:ListItem>
                                    <asp:ListItem Text="Casado(a)" Value="ca"></asp:ListItem>
                                    <asp:ListItem Text="Viuvo(a)" Value="vi"></asp:ListItem>
                                    <asp:ListItem Text="Separado(a)" Value="se"></asp:ListItem>
                                </asp:DropDownList>
                            </li>
                            <div id="divDadosConjuge" style="display: none;">
                                <li>

                                    <asp:TextBox ID="txtConjugeNome" Text='<%#Eval("conjuge_nome")%>' runat="server" placeholder="Nome Conjuge"></asp:TextBox>
                                    <asp:TextBox ID="txtConjugeRg" Text='<%#Eval("conjuge_rg")%>' runat="server" placeholder="RG Conjuge"></asp:TextBox>
                                    <asp:TextBox ID="txtConjugeCpf" Text='<%#Eval("conjuge_cpf")%>' runat="server" placeholder="CPF" onkeypress="return Mascaras(event, 'CPF', this.id);" MaxLength="14"></asp:TextBox>
                                </li>
                                <li>
                                    <asp:TextBox ID="txtConjugeOrgao" Text='<%#Eval("conjuge_orgao")%>' runat="server" placeholder="Conjuge Orgão"></asp:TextBox>
                                    <asp:TextBox ID="txtConjugeDtNascimento" Text='<%#Eval("conjuge_nascimento")%>' runat="server" placeholder="Conjuge Data Nascimento" onkeypress="return Mascaras(event, 'DATA', this.id);" MaxLength="10"></asp:TextBox>
                                    <asp:TextBox ID="txtConjugeEmail" Text='<%#Eval("conjuge_nascimento")%>' runat="server" placeholder="Email"></asp:TextBox>
                                </li>
                            </div>
                            <li>
                                <asp:TextBox ID="txtPais" Text='<%#Eval("pais")%>' runat="server" placeholder="País"></asp:TextBox>
                                <asp:TextBox ID="txtSite" Text='<%#Eval("site")%>' runat="server" placeholder="Site"></asp:TextBox>
                                <asp:DropDownList ID="ddlImobiliaria" runat="server" Width="312" Height="29" placeholder="Imobiliaria" />
                                <asp:TextBox ID="txtObs" runat="server" Text='<%#Eval("observacao")%>' TextMode="MultiLine" Width="64.3%" Height="120" placeholder="Observação"></asp:TextBox>
                                <asp:Button ID="Button1" runat="server" CommandName="Insert" Text="Salvar" Width="313" Height="60" Style="vertical-align: top; margin-top: 8%; font-size: 3em;" />
                            </li>
                            <li></li>
                        </ol>
                    </InsertItemTemplate>
                </asp:TemplateField>


            </Fields>
        </asp:DetailsView>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:imobiliariaConnectionString %>"
            InsertCommand="INSERT INTO [clientes] ([codigo_imobiliaria], [pessoa_fisica], [razao], [fantasia], [cnpj_cpf], [ie_rg], [imunicipal], [endereco], [numero], [complemento], [bairro], [cidade], [estado], [cep], [pais], [telefone], [celular], [nextel], [cadastro], [email], [site], [observacao], [estado_civil], [nascimento], [conjuge_nome], [conjuge_rg], [conjuge_orgao], [conjuge_cpf], [conjuge_nascimento], [conjuge_email], [ativo]) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"
            ProviderName="<%$ ConnectionStrings:imobiliariaConnectionString.ProviderName %>">
            <InsertParameters>
                <asp:Parameter Name="codigo_imobiliaria" Type="Int32" />
                <asp:Parameter Name="pessoa_fisica" Type="Object" />
                <asp:Parameter Name="razao" Type="String" />
                <asp:Parameter Name="fantasia" Type="String" />
                <asp:Parameter Name="cnpj_cpf" Type="String" />
                <asp:Parameter Name="ie_rg" Type="String" />
                <asp:Parameter Name="imunicipal" Type="String" />
                <asp:Parameter Name="endereco" Type="String" />
                <asp:Parameter Name="numero" Type="String" />
                <asp:Parameter Name="complemento" Type="String" />
                <asp:Parameter Name="bairro" Type="String" />
                <asp:Parameter Name="cidade" Type="String" />
                <asp:Parameter Name="estado" Type="String" />
                <asp:Parameter Name="cep" Type="String" />
                <asp:Parameter Name="pais" Type="String" />
                <asp:Parameter Name="telefone" Type="String" />
                <asp:Parameter Name="celular" Type="String" />
                <asp:Parameter Name="nextel" Type="String" />
                <asp:Parameter Name="cadastro" Type="DateTime" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="site" Type="String" />
                <asp:Parameter Name="observacao" Type="String" />
                <asp:Parameter Name="estado_civil" Type="String" />
                <asp:Parameter Name="nascimento" Type="DateTime" />
                <asp:Parameter Name="conjuge_nome" Type="String" />
                <asp:Parameter Name="conjuge_rg" Type="String" />
                <asp:Parameter Name="conjuge_orgao" Type="String" />
                <asp:Parameter Name="conjuge_cpf" Type="String" />
                <asp:Parameter Name="conjuge_nascimento" Type="DateTime" />
                <asp:Parameter Name="conjuge_email" Type="String" />
                <asp:Parameter Name="ativo" Type="Object" />
            </InsertParameters>

        </asp:SqlDataSource>
    </fieldset>


</asp:Content>

