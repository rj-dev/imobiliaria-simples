<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Imobiliaria.aspx.cs" Inherits="Imobiliaria" %>

<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>
<%@ Register TagPrefix="qsf" Namespace="Telerik.Web.UI" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="Server">

    <style>
        td {
            padding: 0em 0em 0em 0.7em;
            border: 0 none;
        }

        input[type="image"] {
            width: 15px;
            padding: 0;
            margin: 0;
        }

        input[type="text"] {
            width: 295px;
        }
    </style>

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
        <legend>Imobiliarias</legend>

        <asp:Panel runat="server" ID="pnlGrid">
            <telerik:RadGrid ID="RadGrid1" runat="server" AllowFilteringByColumn="True" AllowPaging="True" AllowSorting="True" Width="900px"
                AutoGenerateColumns="False" DataSourceID="SqlDataSource1" ShowStatusBar="True" ShowFooter="True" GridLines="None" Skin="Outlook"
                AllowAutomaticUpdates="True"
                AllowAutomaticInserts="True"
                OnItemInserted="RadGrid1_OnItemInserted">
                <MasterTableView DataSourceID="SqlDataSource1" NoMasterRecordsText="Nenhum registro encontrado" DataKeyNames="codigo" CommandItemDisplay="Top">
                    <CommandItemSettings AddNewRecordText="Adicionar nova imobiliária" RefreshText="Atualizar"></CommandItemSettings>
                    <RowIndicatorColumn>
                        <HeaderStyle Width="20px"></HeaderStyle>
                    </RowIndicatorColumn>
                    <ExpandCollapseColumn>
                        <HeaderStyle Width="20px"></HeaderStyle>
                    </ExpandCollapseColumn>

                    <Columns>
                        <telerik:GridBoundColumn DataField="razao" DefaultInsertValue="" HeaderText="Razão Sicial" UniqueName="razao" FilterControlWidth="100%" ShowFilterIcon="False" AutoPostBackOnFilter="True" CurrentFilterFunction="Contains">
                            <HeaderStyle Width="200px" />
                        </telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="fantasia" DefaultInsertValue="" HeaderText="Nome Fantasia" UniqueName="fantasia" FilterControlWidth="100%" ShowFilterIcon="False" AutoPostBackOnFilter="True" CurrentFilterFunction="Contains">
                            <HeaderStyle Width="200px" />
                        </telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="cnpj_cpf" DefaultInsertValue="" HeaderText="CNPJ" UniqueName="cnpj_cpf" FilterControlWidth="100%" ShowFilterIcon="False" AutoPostBackOnFilter="True" CurrentFilterFunction="Contains">
                            <HeaderStyle Width="150px" />
                        </telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="telefone" DefaultInsertValue="" HeaderText="Telefone" UniqueName="telefone" FilterControlWidth="100%" ShowFilterIcon="False" AutoPostBackOnFilter="True" CurrentFilterFunction="Contains">
                            <HeaderStyle Width="100px" />
                        </telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="celular" DefaultInsertValue="" HeaderText="Celular" UniqueName="celular" FilterControlWidth="100%" ShowFilterIcon="False" AutoPostBackOnFilter="True" CurrentFilterFunction="Contains">
                            <HeaderStyle Width="100px" />
                        </telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="email" DefaultInsertValue="" HeaderText="Email" UniqueName="email" FilterControlWidth="100%" ShowFilterIcon="False" AutoPostBackOnFilter="True" CurrentFilterFunction="Contains">
                            <HeaderStyle Width="100px" />
                        </telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="site" DefaultInsertValue="" HeaderText="Site" UniqueName="site" FilterControlWidth="100%" ShowFilterIcon="False" AutoPostBackOnFilter="True" CurrentFilterFunction="Contains">
                            <HeaderStyle Width="100px" />
                        </telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="observacao" DefaultInsertValue="" HeaderText="Observação" UniqueName="observacao" FilterControlWidth="100%" ShowFilterIcon="False" AutoPostBackOnFilter="True" CurrentFilterFunction="Contains">
                            <HeaderStyle Width="100px" />
                        </telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="comissao_imobiliaria" DefaultInsertValue="" HeaderText="Comissão" UniqueName="comissao_imobiliaria" FilterControlWidth="100%" ShowFilterIcon="False" AutoPostBackOnFilter="True" CurrentFilterFunction="Contains">
                            <HeaderStyle Width="100px" />
                        </telerik:GridBoundColumn>
                        <telerik:GridEditCommandColumn ButtonType="ImageButton" UniqueName="TemplateEditColumn">
                            <HeaderStyle Width="40px" />
                            <ItemStyle HorizontalAlign="Center" />
                        </telerik:GridEditCommandColumn>
                    </Columns>
                    <EditFormSettings EditFormType="Template">
                        <FormTemplate>
                            <ol style="padding: 0em 0em 0em 0em">
                                <li>
                                    <asp:TextBox ID="txtRazaoSocial" runat="server" Text='<%#Bind("razao")%>' placeholder="Razão Social"></asp:TextBox>
                                    <asp:TextBox ID="txtNomeFantasia" runat="server" Text='<%#Bind("fantasia")%>' placeholder="Nome Fantasia"></asp:TextBox>
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

                                </li>
                                <li>
                                    <%--<asp:DropDownList ID="ddlEstado" runat="server" Width="312" Height="29" placeholder="Estado" />
                                <asp:DropDownList ID="ddlCidade" runat="server" Width="312" Height="29" placeholder="Cidade" />--%>
                                    <asp:TextBox ID="txtEstado" runat="server" Text='<%#Bind("estado")%>' placeholder="Estado"></asp:TextBox>
                                    <asp:TextBox ID="txtCidade" runat="server" Text='<%#Bind("cidade")%>' placeholder="Cidade"></asp:TextBox>

                                </li>

                                <li>
                                    <asp:TextBox ID="txtPais" Text='<%#Bind("pais")%>' runat="server" placeholder="País"></asp:TextBox>
                                    <asp:TextBox ID="txtSite" Text='<%#Bind("site")%>' runat="server" placeholder="Site"></asp:TextBox>
                                </li>
                                <li>

                                    <asp:TextBox ID="txtObs" runat="server" Text='<%#Bind("observacao")%>' TextMode="MultiLine" Width="64.6%" Height="120" placeholder="Observação"></asp:TextBox>
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
                <ClientSettings>
                    <Scrolling AllowScroll="True" UseStaticHeaders="True" SaveScrollPosition="true" FrozenColumnsCount="2"></Scrolling>
                </ClientSettings>
            </telerik:RadGrid>
        </asp:Panel>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:imobiliariaConnectionString %>"
            DeleteCommand="DELETE FROM [imobiliarias] WHERE [codigo] = ?"
            InsertCommand="INSERT INTO imobiliarias (pessoa_fisica, razao, fantasia, cnpj_cpf, ie_rg, imunicipal, endereco, numero, complemento, bairro, cidade, estado, cep, pais, telefone, celular, nextel, email, site, observacao, comissao_imobiliaria) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"
            OldValuesParameterFormatString="original_{0}"
            ProviderName="<%$ ConnectionStrings:imobiliariaConnectionString.ProviderName %>"
            SelectCommand="SELECT codigo, pessoa_fisica, razao, fantasia, cnpj_cpf, ie_rg, imunicipal, endereco, numero, complemento, bairro, cidade, estado, cep, pais, telefone, celular, nextel, cadastro, email, site, observacao, comissao_imobiliaria FROM imobiliarias"
            UpdateCommand="UPDATE imobiliarias SET pessoa_fisica = ?, razao = ?, fantasia = ?, cnpj_cpf = ?, ie_rg = ?, imunicipal = ?, endereco = ?, numero = ?, complemento = ?, bairro = ?, cidade = ?, estado = ?, cep = ?, pais = ?, telefone = ?, celular = ?, nextel = ?, email = ?, site = ?, observacao = ?, comissao_imobiliaria = ? WHERE codigo = ?">
            <DeleteParameters>
                <asp:Parameter Name="original_codigo" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="pessoa_fisica" Type="Object" DefaultValue="" />
                <asp:Parameter Name="razao" Type="String" />
                <asp:Parameter Name="fantasia" Type="String" />
                <asp:Parameter Name="cnpj_cpf" Type="String" />
                <asp:Parameter Name="ie_rg" Type="String" DefaultValue="" />
                <asp:Parameter Name="imunicipal" Type="String" DefaultValue="" />
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
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="site" Type="String" />
                <asp:Parameter Name="observacao" Type="String" />
                <asp:Parameter Name="comissao_imobiliaria" Type="Double" DefaultValue="0" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="pessoa_fisica" Type="Object" DefaultValue="0" />
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
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="site" Type="String" />
                <asp:Parameter Name="observacao" Type="String" />
                <asp:Parameter Name="comissao_imobiliaria" Type="Double" DefaultValue="0" />
                <asp:Parameter Name="original_codigo" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </fieldset>

</asp:Content>

