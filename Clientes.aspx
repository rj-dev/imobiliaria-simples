<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Clientes.aspx.cs" Inherits="Clientes" UICulture="pt-BR" Culture="pt-BR" %>

<%@ Register TagPrefix="telerik" Namespace="Telerik.Web.UI" Assembly="Telerik.Web.UI, Version=2009.3.1208.20, Culture=neutral, PublicKeyToken=121fae78165ba3d4" %>

<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="Server">
    <style type="text/css">
        input[type="checkbox"] {
            float: left;
        }
        input[type="image"] {
            width: 15px;
            padding: 0;
            margin: 0;
        }

        div .rmScrollWrap .rmGroup .rmLevel0 {
            height: 340px;
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
    
     <telerik:RadAjaxManager ID="RadAjaxManager1" runat="server">
        <AjaxSettings>
            <telerik:AjaxSetting AjaxControlID="RadGrid1">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="RadGrid1" LoadingPanelID="RadAjaxLoadingPanel1" />
                </UpdatedControls>
            </telerik:AjaxSetting>
        </AjaxSettings>
    </telerik:RadAjaxManager>
    <telerik:RadAjaxLoadingPanel ID="RadAjaxLoadingPanel1" runat="server" IsSticky="True">
    </telerik:RadAjaxLoadingPanel>

    <fieldset>
        <legend>Clientes</legend>

        <asp:Panel runat="server" ID="pnlGrid">
            <telerik:RadGrid ID="RadGrid1" runat="server" AllowFilteringByColumn="True" AllowPaging="True" AllowSorting="True" Width="900px"
                AutoGenerateColumns="False" DataSourceID="SqlDataSource1" ShowStatusBar="True" ShowFooter="True" GridLines="None" Skin="Outlook"
                AllowAutomaticUpdates="True"
                AllowAutomaticInserts="True"
                EnableHeaderContextMenu="True" EnableHeaderContextFilterMenu="true">
                <MasterTableView DataSourceID="SqlDataSource1" NoMasterRecordsText="Nenhum registro encontrado" DataKeyNames="codigo" CommandItemDisplay="Top">
                    <CommandItemSettings AddNewRecordText="Adicionar novo cliente" RefreshText="Atualizar"></CommandItemSettings>
                    <RowIndicatorColumn>
                        <HeaderStyle Width="20px"></HeaderStyle>
                    </RowIndicatorColumn>
                    <ExpandCollapseColumn>
                        <HeaderStyle Width="20px"></HeaderStyle>
                    </ExpandCollapseColumn>
                    
                    <Columns>
                        <telerik:GridEditCommandColumn ButtonType="ImageButton">
                            <ItemStyle HorizontalAlign="Center" />
                        </telerik:GridEditCommandColumn>
                        <telerik:GridBoundColumn DataField="razao" DefaultInsertValue="" HeaderText="razao" SortExpression="razao" UniqueName="razao" FilterControlWidth="100%" ShowFilterIcon="False" AutoPostBackOnFilter="True" CurrentFilterFunction="Contains">
                        </telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="fantasia" DefaultInsertValue="" HeaderText="fantasia" SortExpression="fantasia" UniqueName="fantasia" FilterControlWidth="100%" ShowFilterIcon="False" AutoPostBackOnFilter="True" CurrentFilterFunction="Contains">
                        </telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="cnpj_cpf" DefaultInsertValue="" HeaderText="cnpj_cpf" SortExpression="cnpj_cpf" UniqueName="cnpj_cpf" FilterControlWidth="100%" ShowFilterIcon="False" AutoPostBackOnFilter="True" CurrentFilterFunction="Contains">
                        </telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="ie_rg" DefaultInsertValue="" HeaderText="ie_rg" SortExpression="ie_rg" UniqueName="ie_rg" FilterControlWidth="100%" ShowFilterIcon="False" AutoPostBackOnFilter="True" CurrentFilterFunction="Contains" Display="False">
                        </telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="cep" DefaultInsertValue="" HeaderText="cep" SortExpression="cep" UniqueName="cep" FilterControlWidth="100%" ShowFilterIcon="False" AutoPostBackOnFilter="True" CurrentFilterFunction="Contains">
                        </telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="estado" DefaultInsertValue="" HeaderText="estado" SortExpression="estado" UniqueName="estado" FilterControlWidth="100%" ShowFilterIcon="False" AutoPostBackOnFilter="True" CurrentFilterFunction="Contains">
                        </telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="cidade" DefaultInsertValue="" HeaderText="cidade" SortExpression="cidade" UniqueName="cidade" FilterControlWidth="100%" ShowFilterIcon="False" AutoPostBackOnFilter="True" CurrentFilterFunction="Contains">
                        </telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="bairro" DefaultInsertValue="" HeaderText="bairro" SortExpression="bairro" UniqueName="bairro" FilterControlWidth="100%" ShowFilterIcon="False" AutoPostBackOnFilter="True" CurrentFilterFunction="Contains">
                        </telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="complemento" DefaultInsertValue="" HeaderText="complemento" SortExpression="complemento" UniqueName="complemento" FilterControlWidth="100%" ShowFilterIcon="False" AutoPostBackOnFilter="True" CurrentFilterFunction="Contains">
                        </telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="numero" DefaultInsertValue="" HeaderText="numero" SortExpression="numero" UniqueName="numero" FilterControlWidth="100%" ShowFilterIcon="False" AutoPostBackOnFilter="True" CurrentFilterFunction="Contains">
                        </telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="endereco" DefaultInsertValue="" HeaderText="endereco" SortExpression="endereco" UniqueName="endereco" FilterControlWidth="100%" ShowFilterIcon="False" AutoPostBackOnFilter="True" CurrentFilterFunction="Contains">
                        </telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="imunicipal" DefaultInsertValue="" HeaderText="imunicipal" SortExpression="imunicipal" UniqueName="imunicipal" FilterControlWidth="100%" ShowFilterIcon="False" AutoPostBackOnFilter="True" CurrentFilterFunction="Contains" Display="False">
                        </telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="pais" DefaultInsertValue="" HeaderText="pais" SortExpression="pais" UniqueName="pais" FilterControlWidth="100%" ShowFilterIcon="False" AutoPostBackOnFilter="True" CurrentFilterFunction="Contains">
                        </telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="telefone" DefaultInsertValue="" HeaderText="telefone" SortExpression="telefone" UniqueName="telefone" FilterControlWidth="100%" ShowFilterIcon="False" AutoPostBackOnFilter="True" CurrentFilterFunction="Contains">
                        </telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="nextel" DefaultInsertValue="" HeaderText="nextel" SortExpression="nextel" UniqueName="nextel" FilterControlWidth="100%" ShowFilterIcon="False" AutoPostBackOnFilter="True" CurrentFilterFunction="Contains">
                        </telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="celular" DefaultInsertValue="" HeaderText="celular" SortExpression="celular" UniqueName="celular" FilterControlWidth="100%" ShowFilterIcon="False" AutoPostBackOnFilter="True" CurrentFilterFunction="Contains">
                        </telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="cadastro" DataType="System.DateTime" DefaultInsertValue="" HeaderText="cadastro" SortExpression="cadastro" UniqueName="cadastro" FilterControlWidth="100%" ShowFilterIcon="False" AutoPostBackOnFilter="True" CurrentFilterFunction="Contains" Display="False">
                        </telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="email" DefaultInsertValue="" HeaderText="email" SortExpression="email" UniqueName="email" FilterControlWidth="100%" ShowFilterIcon="False" AutoPostBackOnFilter="True" CurrentFilterFunction="Contains">
                        </telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="site" DefaultInsertValue="" HeaderText="site" SortExpression="site" UniqueName="site" FilterControlWidth="100%" ShowFilterIcon="False" AutoPostBackOnFilter="True" CurrentFilterFunction="Contains">
                        </telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="observacao" DefaultInsertValue="" HeaderText="observacao" SortExpression="observacao" UniqueName="observacao" FilterControlWidth="100%" ShowFilterIcon="False" AutoPostBackOnFilter="True" CurrentFilterFunction="Contains">
                        </telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="estado_civil" DefaultInsertValue="" HeaderText="estado_civil" SortExpression="estado_civil" UniqueName="estado_civil" FilterControlWidth="100%" ShowFilterIcon="False" AutoPostBackOnFilter="True" CurrentFilterFunction="Contains">
                        </telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="nascimento" DataType="System.DateTime" DefaultInsertValue="" HeaderText="nascimento" SortExpression="nascimento" UniqueName="nascimento" FilterControlWidth="100%" ShowFilterIcon="False" AutoPostBackOnFilter="True" CurrentFilterFunction="Contains" Display="False">
                        </telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="conjuge_nome" DefaultInsertValue="" HeaderText="conjuge_nome" SortExpression="conjuge_nome" UniqueName="conjuge_nome" FilterControlWidth="100%" ShowFilterIcon="False" AutoPostBackOnFilter="True" CurrentFilterFunction="Contains" Display="False">
                        </telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="conjuge_rg" DefaultInsertValue="" HeaderText="conjuge_rg" SortExpression="conjuge_rg" UniqueName="conjuge_rg" FilterControlWidth="100%" ShowFilterIcon="False" AutoPostBackOnFilter="True" CurrentFilterFunction="Contains" Display="False">
                        </telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="conjuge_orgao" DefaultInsertValue="" HeaderText="conjuge_orgao" SortExpression="conjuge_orgao" UniqueName="conjuge_orgao" FilterControlWidth="100%" ShowFilterIcon="False" AutoPostBackOnFilter="True" CurrentFilterFunction="Contains" Display="False">
                        </telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="conjuge_cpf" DefaultInsertValue="" HeaderText="conjuge_cpf" SortExpression="conjuge_cpf" UniqueName="conjuge_cpf" FilterControlWidth="100%" ShowFilterIcon="False" AutoPostBackOnFilter="True" CurrentFilterFunction="Contains" Display="False">
                        </telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="conjuge_nascimento" DataType="System.DateTime" DefaultInsertValue="" HeaderText="conjuge_nascimento" SortExpression="conjuge_nascimento" UniqueName="conjuge_nascimento" FilterControlWidth="100%" ShowFilterIcon="False" AutoPostBackOnFilter="True" CurrentFilterFunction="Contains" Display="False">
                        </telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="conjuge_email" DefaultInsertValue="" HeaderText="conjuge_email" SortExpression="conjuge_email" UniqueName="conjuge_email" FilterControlWidth="100%" ShowFilterIcon="False" AutoPostBackOnFilter="True" CurrentFilterFunction="Contains" Display="False">
                        </telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="ativo" DataType="System.UInt64" DefaultInsertValue="" HeaderText="ativo" SortExpression="ativo" UniqueName="ativo" FilterControlWidth="100%" ShowFilterIcon="False" AutoPostBackOnFilter="True" CurrentFilterFunction="Contains">
                        </telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="codigo" DataType="System.Int32" DefaultInsertValue="" HeaderText="codigo" ReadOnly="True" SortExpression="codigo" UniqueName="codigo" FilterControlWidth="100%" ShowFilterIcon="False" AutoPostBackOnFilter="True" CurrentFilterFunction="Contains" Display="False" Visible="False">
                        </telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="pessoa_fisica" DataType="System.SByte" DefaultInsertValue="" HeaderText="pessoa_fisica" SortExpression="pessoa_fisica" UniqueName="pessoa_fisica" FilterControlWidth="100%" ShowFilterIcon="False" AutoPostBackOnFilter="True" CurrentFilterFunction="Contains" Display="False" Visible="False">
                        </telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="codigo_imobiliaria" DataType="System.Int32" DefaultInsertValue="" HeaderText="codigo_imobiliaria" SortExpression="codigo_imobiliaria" UniqueName="codigo_imobiliaria" FilterControlWidth="100%" ShowFilterIcon="False" AutoPostBackOnFilter="True" CurrentFilterFunction="Contains" Display="False">
                        </telerik:GridBoundColumn>

                    </Columns>
                    <EditFormSettings EditFormType="Template">
                        <FormTemplate>
                            <ol style="padding: 0em 0em 0em 0em">
                                <li>
                                    <asp:TextBox ID="txtRazaoSocial" runat="server" Text='<%#Bind("razao")%>' placeholder="Razão Social"></asp:TextBox>
                                    <asp:TextBox ID="txtNomeFantasia" runat="server" Text='<%#Bind("fantasia")%>' placeholder="Nome Fantasia"></asp:TextBox>
                                </li>
                                <li>
                                    <asp:TextBox ID="txtCpfCnpj" runat="server" Text='<%#Bind("cnpj_cpf")%>' placeholder="CPF/CNPJ"></asp:TextBox>
                                </li>
                                <li>

                                    <asp:TextBox ID="txtCelular" runat="server" Text='<%#Bind("celular")%>' placeholder="Celular" onkeypress="return Mascaras(event, 'FONE', this.id);" MaxLength="15"></asp:TextBox>
                                    <asp:TextBox ID="txtTelefone" runat="server" Text='<%#Bind("telefone")%>' placeholder="Telefone" onkeypress="return Mascaras(event, 'FONE', this.id);" MaxLength="15"></asp:TextBox>
                                    <asp:TextBox ID="txtEmail" runat="server" Text='<%#Bind("email")%>' placeholder="Email"></asp:TextBox>

                                </li>
                                <li>


                                    <asp:TextBox ID="txtEndereco" runat="server" Text='<%#Bind("endereco")%>' placeholder="Endereço"></asp:TextBox>
                                    <asp:TextBox ID="txtNumero" runat="server" Text='<%#Bind("numero")%>' placeholder="Numero"></asp:TextBox>
                                    <asp:TextBox ID="txtComplemento" runat="server" Text='<%#Bind("complemento")%>' placeholder="Complemento"></asp:TextBox>
                                </li>
                                <li>
                                    <asp:TextBox ID="txtBairro" runat="server" Text='<%#Bind("bairro")%>' placeholder="Bairro"></asp:TextBox>
                                    <asp:TextBox ID="txtCep" runat="server" Text='<%#Bind("cep")%>' placeholder="Cep" onkeypress="return Mascaras(event, 'CEP', this.id);" MaxLength="9"></asp:TextBox>
                                    <asp:TextBox ID="txtPais" Text='<%#Bind("pais")%>' runat="server" placeholder="País"></asp:TextBox>
                                </li>
                                <li>
                                    <asp:TextBox ID="txtEstado" runat="server" Text='<%#Bind("estado")%>' placeholder="Estado"></asp:TextBox>
                                    <asp:TextBox ID="txtCidade" runat="server" Text='<%#Bind("cidade")%>' placeholder="Cidade"></asp:TextBox>
                                    <asp:DropDownList ID="ddlEstadoCivil" runat="server" Width="271" Height="29" placeholder="Estado" onchange="estadoCivil(this)">
                                        <asp:ListItem Text="Estado Civil" Value=""></asp:ListItem>
                                        <asp:ListItem Text="Solteiro(a)" Value="so"></asp:ListItem>
                                        <asp:ListItem Text="Casado(a)" Value="ca"></asp:ListItem>
                                        <asp:ListItem Text="Viuvo(a)" Value="vi"></asp:ListItem>
                                        <asp:ListItem Text="Separado(a)" Value="se"></asp:ListItem>
                                    </asp:DropDownList>
                                </li>

                                <li>

                                    <asp:TextBox ID="txtSite" Text='<%#Bind("site")%>' runat="server" placeholder="Site"></asp:TextBox>
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

                                    <asp:TextBox ID="txtObs" runat="server" Text='<%#Bind("observacao")%>' TextMode="MultiLine" Width="900px" Height="120" placeholder="Observação"></asp:TextBox>
                                </li>
                                <li>
                                    <div style="clear: both; height: 20px;"></div>
                                    <div>
                                        <asp:Button ID="btnUpdate" Text='<%# (Container is GridEditFormInsertItem) ? "Adicionar" : "Salvar" %>'
                                            runat="server" CommandName='<%# (Container is GridEditFormInsertItem) ? "PerformInsert" : "Update" %>' CausesValidation="False"></asp:Button>&nbsp;
                                <asp:Button ID="btnCancel" Text="Cancel" runat="server" CausesValidation="False"
                                    CommandName="Cancel"></asp:Button>
                                    </div>
                                </li>
                                <li></li>
                            </ol>
                        </FormTemplate>
                    </EditFormSettings>
                   
                </MasterTableView>
                <HeaderContextMenu AutoScrollMinimumHeight="200" EnableRootItemScroll="True" EnableScreenBoundaryDetection="True" EnableAutoScroll="True" >
                </HeaderContextMenu>
                <ClientSettings>
                    <Scrolling AllowScroll="True" UseStaticHeaders="True" SaveScrollPosition="true"></Scrolling>
                </ClientSettings>
            </telerik:RadGrid>

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:imobiliariaConnectionString %>"
                DeleteCommand="DELETE FROM [clientes] WHERE [codigo] = ?"
                InsertCommand="INSERT INTO clientes(codigo_imobiliaria, pessoa_fisica, razao, fantasia, cnpj_cpf, ie_rg, cep, estado, cidade, bairro, complemento, numero, endereco, imunicipal, pais, telefone, nextel, celular, email, site, observacao, estado_civil, nascimento, conjuge_nome, conjuge_rg, conjuge_orgao, conjuge_cpf, conjuge_nascimento, conjuge_email, ativo) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"
                ProviderName="<%$ ConnectionStrings:imobiliariaConnectionString.ProviderName %>"
                OldValuesParameterFormatString="original_{0}"
                SelectCommand="SELECT codigo, codigo_imobiliaria, pessoa_fisica, razao, fantasia, cnpj_cpf, ie_rg, cep, estado, cidade, bairro, complemento, numero, endereco, imunicipal, pais, telefone, nextel, celular, cadastro, email, site, observacao, estado_civil, nascimento, conjuge_nome, conjuge_rg, conjuge_orgao, conjuge_cpf, conjuge_nascimento, conjuge_email, ativo FROM clientes"
                UpdateCommand="UPDATE clientes SET codigo_imobiliaria = ?, pessoa_fisica = ?, razao = ?, fantasia = ?, cnpj_cpf = ?, ie_rg = ?, cep = ?, estado = ?, cidade = ?, bairro = ?, complemento = ?, numero = ?, endereco = ?, imunicipal = ?, pais = ?, telefone = ?, nextel = ?, celular = ?, email = ?, site = ?, observacao = ?, estado_civil = ?, nascimento = ?, conjuge_nome = ?, conjuge_rg = ?, conjuge_orgao = ?, conjuge_cpf = ?, conjuge_nascimento = ?, conjuge_email = ?, ativo = ? WHERE codigo = ?"
                >
                <DeleteParameters>
                    <asp:Parameter Name="codigo" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="codigo_imobiliaria" Type="Int32" DefaultValue="1" />
                    <asp:Parameter Name="pessoa_fisica" Type="Object" DefaultValue="0" />
                    <asp:Parameter Name="razao" Type="String" />
                    <asp:Parameter Name="fantasia" Type="String" />
                    <asp:Parameter Name="cnpj_cpf" Type="String" />
                    <asp:Parameter Name="ie_rg" Type="String" />
                    <asp:Parameter Name="cep" Type="String" />
                    <asp:Parameter Name="estado" Type="String" />
                    <asp:Parameter Name="cidade" Type="String" />
                    <asp:Parameter Name="bairro" Type="String" />
                    <asp:Parameter Name="complemento" Type="String" />
                    <asp:Parameter Name="numero" Type="String" />
                    <asp:Parameter Name="endereco" Type="String" />
                    <asp:Parameter Name="imunicipal" Type="String" />
                    <asp:Parameter Name="pais" Type="String" />
                    <asp:Parameter Name="telefone" Type="String" />
                    <asp:Parameter Name="nextel" Type="String" />
                    <asp:Parameter Name="celular" Type="String" />
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
                <UpdateParameters>
                    <asp:Parameter Name="codigo_imobiliaria" Type="Int32" DefaultValue="1" />
                    <asp:Parameter Name="pessoa_fisica" Type="Object" DefaultValue="0" />
                    <asp:Parameter Name="razao" Type="String" />
                    <asp:Parameter Name="fantasia" Type="String" />
                    <asp:Parameter Name="cnpj_cpf" Type="String" />
                    <asp:Parameter Name="ie_rg" Type="String" />
                    <asp:Parameter Name="cep" Type="String" />
                    <asp:Parameter Name="estado" Type="String" />
                    <asp:Parameter Name="cidade" Type="String" />
                    <asp:Parameter Name="bairro" Type="String" />
                    <asp:Parameter Name="complemento" Type="String" />
                    <asp:Parameter Name="numero" Type="String" />
                    <asp:Parameter Name="endereco" Type="String" />
                    <asp:Parameter Name="imunicipal" Type="String" />
                    <asp:Parameter Name="pais" Type="String" />
                    <asp:Parameter Name="telefone" Type="String" />
                    <asp:Parameter Name="nextel" Type="String" />
                    <asp:Parameter Name="celular" Type="String" />
                    <asp:Parameter Name="email" Type="String" />
                    <asp:Parameter Name="site" Type="String" />
                    <asp:Parameter Name="observacao" Type="String" />
                    <asp:Parameter Name="estado_civil" Type="String" />
                    <asp:Parameter Name="nascimento" Type="DateTime" />
                    <asp:Parameter Name="conjuge_nome" Type="String" />
                    <asp:Parameter Name="conjuge_rg" Type="String" />
                    <asp:Parameter Name="conjuge_orgao" Type="String" />
                    <asp:Parameter Name="conjuge_cpf" Type="String" />
                    <asp:Parameter Name="conjuge_nascimento" Type="DateTime"/>
                    <asp:Parameter Name="conjuge_email" Type="String" />
                    <asp:Parameter Name="ativo" Type="Object" />
                    <asp:Parameter Name="original_codigo" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </asp:Panel>
    </fieldset>
</asp:Content>

