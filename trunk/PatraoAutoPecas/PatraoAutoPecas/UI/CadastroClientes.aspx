<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CadastroClientes.aspx.cs" Inherits="PatraoAutoPecas.UI.CadastroClientes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 345px;
        }
        .auto-style3 {
            width: 358px;
        }
        .auto-style4 {
            width: 275px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <link href="Content/style.css" rel="stylesheet" type="text/css" media="screen" />
    <script type='text/javascript' src="../Scripts/WebForms/Modal.js"></script><br />          
&nbsp;&nbsp;<a href="#cadastrar" rel="modal">Cadastrar Novo Cliente</a>
    <br />   
     <br />
     &nbsp;&nbsp;<asp:Label ID="Label1" runat="server" Text="Pesquisar Clientes:"></asp:Label>
     &nbsp;&nbsp;<asp:TextBox ID="txtPesquisar" runat="server" Width ="400"  ToolTip="Aperte Enter ou clique no botão pesquisar" />
     <asp:ImageButton ID="imgBtnPesquisar" runat="server"   ToolTip="Pesquisar" Width="30px" ImageUrl="~/Images/buscar.gif" />
    <br />   
     <br /> 
    &nbsp;&nbsp;<asp:Label ID="lblQuantidadText" runat="server" Text="Quantidade de clientes cadastrados:"></asp:Label><asp:Label ID="lblQuantidade" runat="server" Text="  -"></asp:Label>
    <br />   
     <br />
    
    <div class="window" id="cadastrar">
	<a href="#CadastroClientes" class="fechar">X Fechar</a>
	<h3>Cadastro de Clientes:</h3>
    <table id="tbForm1">
        <tr>
            <td><asp:RadioButton ID="rbtAtivo" runat="server" Text="Ativo" GroupName ="grpStatus" Checked ="true" Width="100px"/></td>
            <td><asp:RadioButton ID="rbtInativo" runat="server" Text="Inativo" GroupName ="grpStatus" Width="100px"/></td>
            <td><asp:RadioButton ID="rbtFisica" runat="server" Text="Pessoa Física" GroupName ="grpTipoPessoa" Checked ="true" Width="100px"/></td>
            <td><asp:RadioButton ID="rbtJuridica" runat="server" Text="Pessoa Jurídica" GroupName ="grpTipoPessoa" Width="150px"/></td>
        </tr>
    </table>
     <table>    
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="lblNome" runat="server" Text="Nome:"></asp:Label></td>                
                <td class="auto-style1">
                    <asp:Label ID="lblCpfCnpj" runat="server" Text="CPF/CNPJ:"></asp:Label></td>                
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:TextBox ID="txtNome" runat="server" Font-Names="Arial Black" Width="350px"></asp:TextBox></td>
                <td class="auto-style1">
                    <asp:TextBox ID="txtCpfCnpj" runat="server"  Width="350px"></asp:TextBox></td>
            </tr>
    </table>
 
        <table>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="lblCidade" runat="server" Text="Cidade:"></asp:Label></td>
                <td class="auto-style3">
                    <asp:Label ID="lblBairro" runat="server" Text="Bairro"></asp:Label></td>
             </tr>
              
            <tr>
                <td class="auto-style1">
                    <asp:TextBox ID="txtCidade" runat="server" Width="350px"></asp:TextBox></td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtBairro" runat="server" Width="351px"></asp:TextBox></td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="lblRua" runat="server" Text="Rua"></asp:Label></td>
                <td class="auto-style3">
                    <asp:Label ID="lblNumero" runat="server" Text="Número"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lblCep" runat="server" Text="CEP"></asp:Label></td>
            </tr>    
            <tr>
                <td class="auto-style1">
                    <asp:TextBox ID="txtRua" runat="server" Width="350px"></asp:TextBox></td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtNumero" runat="server" Width="100px"></asp:TextBox>
                    <asp:TextBox ID="txtCep" runat="server" Width="100px" style="margin-left: 22px"></asp:TextBox></td>      
            </tr>
            </table>
        
        <table>      
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="lblEmail" runat="server" Text="E-MAIL :"></asp:Label></td>                 
                <td class="auto-style4">
                    <asp:Label ID="lblFacebook" runat="server" Text="Facebook :"></asp:Label></td>                            
            </tr>
            <tr>
                <td class="auto-style1">
                <asp:TextBox ID="txtEmail" runat="server" Width="350px"></asp:TextBox></td>                   
                <td class="auto-style4">
                <asp:TextBox ID="txtFacebook" runat="server" Width="350px"></asp:TextBox></td>   
            </tr>
       </table>
        <table>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="lblTelefone" runat="server" Text="Telefone :"></asp:Label></td>
                <td class="auto-style4">    
                    <asp:Label ID="lblCelular" runat="server" Text="Celular :"></asp:Label></td>
                <td class="auto-style1">
                    <asp:Label ID="lblRadio" runat="server" Text="Rádio :"></asp:Label></td>
            </tr>    
            <tr>
                <td class="auto-style1">
                    <asp:TextBox ID="txtTelefone" runat="server" Width="150px"></asp:TextBox></td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtCelular" runat="server" Width="150px"></asp:TextBox>
                <td class="auto-style1">
                    <asp:TextBox ID="txtRadio" runat="server" Width="150px"></asp:TextBox></td>       
            </tr>
            </table>
        <table>
            <tr>
                <td>
                    <label for="nome">Observação:</label>
                       <asp:UpdatePanel ID="UpdatePanel8" runat="server">
                         <ContentTemplate>
                    <asp:TextBox ID="txtObservacao" TextMode="MultiLine"  runat="server" Width ="805" Rows ="3"/> 
                              </ContentTemplate>
                     </asp:UpdatePanel>  
                </td>
            </tr>
       </table>     
        <table>
             <tr>
                 <td>
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                         <ContentTemplate>
                            <asp:Button ID="btnSalvar" runat="server" ToolTip ="Salvar" Text="Salvar" CssClass ="salvar"/></td>
                         </ContentTemplate>
                     </asp:UpdatePanel>   
                </td>
            </tr>
        </table>
     </div> 

    <!-- mascara para cobrir o site -->	
<div id="mascara"></div>
</asp:Content>
