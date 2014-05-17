<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PDV.aspx.cs" Inherits="PatraoAutoPecas.UI.PDV2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title>iGestor-Vendas/Orçamentos</title>
    <style type="text/css">
        .auto-style1 {
            width: 528px;
        }
        .auto-style4 {
            width: 122px;
        }
        .auto-style6 {
            width: 200px;
        }
        .auto-style7 {
            width: 205px;
        }
        .auto-style8 {
            width: 211px;
        }
    </style>
    <link href="../Content/style.css" rel="stylesheet" type="text/css" media="screen" />
</head>
<body>
    <form id="form1" runat="server" >
        <div>
            <header>
                <div class="content-wrapper">
                    <div class="float-left">
                        <p class="site-title">
                            <img src="../Images/Logo.png" style="height: 82px; width: 263px" />
                        </p>
                    </div>
                </div>
            </header>
        </div>
        <%--<div class="fundo">--%>
                <fieldset class="fieldsets">
                   <legend>Usuários</legend>
                    <table>
                    <tr>
                           <td class="auto-style1">
                               <asp:Label ID="lblVendedor" runat="server" Text="Vendedor:" Font-Size="X-Large"></asp:Label></td>
                           <td>
                               <asp:Label ID="lblCliente" runat="server" Text="Cliente:" Font-Size="X-Large"></asp:Label></td>
                       </tr>
                       <tr>
                           <td class="auto-style1">
                               <asp:TextBox ID="txtVendedor" runat="server" Enabled="false" Width="518px"></asp:TextBox></td>
                           <td>
                               <asp:TextBox ID="txtCliente" runat="server" Width="518px"></asp:TextBox></td>
                       </tr>
                     </table>      
                </fieldset>
         <%--</div>--%>
        <%--<br />--%>
        <%--<div class="fundo">--%>
               <fieldset class="fieldsets">     
                   <legend>Adicionar Produtos</legend>

                   <table id="tbForm1">
                       <tr>
                           <td><asp:RadioButton ID="rbtVenda" runat="server" Text="Venda" GroupName ="grpAdd" Checked ="true" Font-Size="Large"/></td>
                           <td><asp:RadioButton ID="rbtOrcamento" runat="server" Text="Orçamento" GroupName ="grpAdd" Font-Size="Large"/></td>
                       </tr>
                       <tr>
                           <td>
                               <asp:Label ID="lblCodigo" runat="server" Text="Código:" Font-Size="X-Large"></asp:Label></td>
                           <td>
                               <asp:Label ID="lblProduto" runat="server" Text="Produto:" Font-Size="X-Large"></asp:Label></td>
                            <td>
                               <asp:Label ID="lblQuantidade" runat="server" Text="Quantidade" Font-Size="X-Large"></asp:Label></td>
                           <td>
                               <asp:Label ID="lblPreco" runat="server" Text="Preço" Font-Size="X-Large"></asp:Label></td>
                       </tr>
                       <tr>
                           <td class="auto-style4">
                               <asp:TextBox ID="txtCodigo" runat="server" Width="102px"></asp:TextBox></td>
                           <td>
                               <asp:TextBox ID="txtProduto" runat="server" Width="392px"></asp:TextBox></td>
                           <td>
                               <asp:TextBox ID="txtQuantidade" runat="server" Font-Names="Arial Black" Width="102px"></asp:TextBox></td>
                           <td>
                               <asp:TextBox ID="txtPreco" runat="server" Font-Names="Arial Black" Width="102px"></asp:TextBox>   
                               <asp:Button ID="btnAdicionar" runat="server" Text="Adicionar"/></td>
                       </tr>
                       
                   </table> 
               </fieldset>
               <%--</div>--%>
        <%--<br />--%>
        <%--<div class="fundo">--%>
                <fieldset class="fieldsets">
                   <legend>Produtos Adicionados</legend>
                   <br />

                </fieldset>
        <%--</div>--%>
        <%--<br />--%>
        <%--<div class="fundo">--%>
                <fieldset class="fieldsets">
                    <legend>Forma de Pagamento</legend>
                    <table>
                        <tr>
                            <td><asp:RadioButton ID="rbtDinheiro" runat="server" Text="Dinheiro" GroupName ="grpFormPag" Checked ="true" Font-Size="X-Large"/></td>
                            <td><asp:RadioButton ID="rbtDebito" runat="server" Text="Cartão de Débito" GroupName ="grpFormPag" Font-Size="X-Large"/></td>
                            <td><asp:RadioButton ID="rbtCredito" runat="server" Text="Cartão de Crédito" GroupName ="grpFormPag" Font-Size="X-Large"/></td>
                            <td><asp:RadioButton ID="rbtCheque" runat="server" Text="Cheque" GroupName ="grpFormPag" Font-Size="X-Large"/></td>
                        </tr>
                    </table>
                </fieldset>
        <%--</div>--%>
        <%--<br />--%>
        <%--<div class="fundo">--%>
               <fieldset class="fieldsetTotal"  >
                   <legend>Valor da Compra</legend>
                   <table>
                   <tr>
                           <td class="auto-style7">
                               &nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="lblFrete" runat="server" Text="Frete: " Font-Bold="True" Font-Italic="True" Font-Names="Arial Black" Font-Size="XX-Large"></asp:Label></td>
                           <td class="auto-style7">
                               <asp:Label ID="lblDesconto" runat="server" Text="Desconto:" Font-Bold="True" Font-Italic="True" Font-Names="Arial Black" Font-Size="XX-Large"></asp:Label></td>    
                           <td class="auto-style7">
                               &nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="lblTotal" runat="server" Text="Total: " Font-Bold="True" Font-Italic="True" Font-Names="Arial Black" Font-Size="XX-Large"></asp:Label></td>
                           <td class="auto-style8">
                               <asp:Label ID="lblValorPago" runat="server" Text="Valor Pago: " Font-Bold="True" Font-Italic="True" Font-Names="Arial Black" Font-Size="XX-Large"></asp:Label></td>
                           <td class="auto-style6">
                               &nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="lblTroco" runat="server" Text="Troco: " Font-Bold="True" Font-Italic="True" Font-Names="Arial Black" Font-Size="XX-Large"></asp:Label></td>
                       </tr>
                       <tr>
                           <td>
                               <asp:TextBox ID="txtFrete" runat="server" Width="194px" Font-Bold="True" Font-Italic="True" Font-Names="Arial Black" Font-Size="XX-Large" Height="50px" Style="margin-top: 23px"></asp:TextBox></td>
                           <td>
                               <asp:TextBox ID="txtDesconto" runat="server" Width="194px" Font-Bold="True" Font-Italic="True" Font-Names="Arial Black" Font-Size="XX-Large" Height="50px" Style="margin-top: 23px"></asp:TextBox></td>
                           <td>
                               <asp:TextBox ID="txtTotal" runat="server" Width="194px" Enabled="false" Font-Bold="True" Font-Italic="True" Font-Names="Arial Black" Font-Size="XX-Large" Height="50px" Style="margin-top: 23px"></asp:TextBox></td>
                           <td>
                               <asp:TextBox ID="txtValorPago" runat="server" Width="200px" Font-Bold="True" Font-Italic="True" Font-Names="Arial Black" Font-Size="XX-Large" Height="50px" Style="margin-top: 23px"></asp:TextBox></td>
                           <td>
                              <asp:TextBox ID="txtTroco" runat="server" Width="194px" Font-Bold="True" Font-Italic="True" Font-Names="Arial Black" Font-Size="XX-Large" Height="50px" Style="margin-top: 23px"></asp:TextBox></td>
                           </tr>
                       </table>
               </fieldset>
        <br />  
        <table>
            <tr>
                <td><asp:Button ID="btnFinalizar" runat="server" Text="Finalizar Operação" CssClass="fechar" Font-Size="X-Large" /></td>
                <td><asp:Button ID="btnBuscarOrc" runat="server" Text="Buscar Orçamentos" CssClass="fechar" Font-Size="X-Large"/></td>
                <td><asp:Button ID="btnBuscarVen" runat="server" Text="Buscar Vendas" CssClass="fechar" Font-Size="X-Large"/></td>
                <td><asp:Button ID="btnLogarVendedor" runat="server" Text="Logar Vendedor" CssClass="fechar" Font-Size="X-Large"/></td>
            </tr>
        </table>    
        
    </form>
</body>
</html>
