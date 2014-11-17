<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="CadastroCliente.aspx.cs" Inherits="CadastroCliente" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="Server">

    <hgroup class="title">
        <h1><%: Title %>.</h1>
        <h2>Cadastro de Clientes</h2>
    </hgroup>

    <fieldset>
        <legend>Cadastro de Clientes</legend>
        <ol>
            <li>
                <asp:TextBox ID="txtRazaoSocial" runat="server" placeholder="Razão Social"></asp:TextBox>
                <asp:TextBox ID="txtNomeFantasia" runat="server" placeholder="Nome Fantasia"></asp:TextBox>
                <asp:TextBox ID="txtCpfCnpj" runat="server" placeholder="CPF/CNPJ"></asp:TextBox>

            </li>
            <li>

                <asp:TextBox ID="txtRgIe" runat="server" placeholder="Rg/IE"></asp:TextBox>
                <asp:TextBox ID="txtIMunicipal" runat="server" placeholder="IMunicial"></asp:TextBox>
                <asp:TextBox ID="txtCelular" runat="server" placeholder="Celular"></asp:TextBox>
            </li>
            <li>

                <asp:TextBox ID="txtTelefone" runat="server" placeholder="Telefone"></asp:TextBox>
                <asp:TextBox ID="txtNextel" runat="server" placeholder="ID Nextel"></asp:TextBox>
                <asp:TextBox ID="txtEmail" runat="server" placeholder="Email"></asp:TextBox>
            </li>
            <li>

                <asp:TextBox ID="txtDataNascimento" runat="server" placeholder="Data de Nascimento"></asp:TextBox>
                <asp:TextBox ID="txtEndereco" runat="server" placeholder="Endereço"></asp:TextBox>
                <asp:TextBox ID="txtNumero" runat="server"></asp:TextBox>
            </li>
            <li>

                <asp:TextBox ID="txtComplemento" runat="server"></asp:TextBox>
                <asp:TextBox ID="txtBairro" runat="server"></asp:TextBox>
                <asp:TextBox ID="txtCep" runat="server"></asp:TextBox>

            </li>
            <li>
                <asp:DropDownList ID="ddlEstadoCivil" runat="server" />
                <asp:TextBox ID="txtConjugeNome" runat="server"></asp:TextBox>
                <asp:TextBox ID="txtConjugeRg" runat="server"></asp:TextBox>

            </li>
            <li></li>
            <li></li>
            <li>

                <asp:TextBox ID="txtConjugeOrgao" runat="server"></asp:TextBox>
            </li>
            <li>
                <asp:DropDownList ID="ddlEstado" runat="server" />
                <asp:TextBox ID="txtConjugeCpf" runat="server"></asp:TextBox>
            </li>
            <li>
                <asp:DropDownList ID="ddlCidade" runat="server" />
                <asp:TextBox ID="txtConjugeDtNascimento" runat="server"></asp:TextBox>
            </li>
            <li>

                <asp:TextBox ID="txtCOnjugeEmail" runat="server"></asp:TextBox>
            </li>
            <li>
                <asp:TextBox ID="txtPais" runat="server"></asp:TextBox>

                <asp:TextBox ID="txtSite" runat="server"></asp:TextBox>
            </li>
            <li>
                <asp:TextBox ID="txtObs" runat="server" TextMode="MultiLine" Height="120"></asp:TextBox>
            </li>
        </ol>
        
        <asp:Button runat="server" Text="Salvar"/>
    </fieldset>




























</asp:Content>

