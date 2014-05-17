<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PD.aspx.cs" Inherits="PatraoAutoPecas.UI.PDV" %>

<!DOCTYPE html>

<body>
<form id="form2" runat="server" >
<form id="Form1" runat="server">
<header>
    <div class="content-wrapper">
        <div class="float-left">
            <p class="site-title">
                <img src="../Images/Logo.png" style="height: 82px; width: 263px" />
            </p>
        </div>
    </div>
</header>



    <div style="height: 439px; width: 1264px">

   <fieldset >
         <legend>Controle de Vendas</legend>

     <table id="tbForm1" >
         
         <tr>  
            <td><asp:Label ID="lblVendedor" runat="server" Text="Vendedor:" Font-Size="X-Large"></asp:Label></td>
            <td><asp:Label ID="lblCliente" runat="server" Text="Cliente:" Font-Size="X-Large"></asp:Label></td>
         </tr>  
         <tr>  
            <td><asp:TextBox ID="txtVendedor" runat="server" Enabled ="false"  Width="340px"></asp:TextBox></td>
            <td><asp:TextBox ID="txtCliente" runat="server" Width="358px"></asp:TextBox>
        </tr>
         <tr>
             <td><asp:Label ID="lblCodigo" runat="server" Text="Código:" Font-Size="X-Large"></asp:Label></td>
             <td><asp:Label ID="lblProduto" runat="server" Text="Produto:" Font-Size="X-Large"></asp:Label></td>
         </tr>
         <tr>
             <td><asp:TextBox ID="txtCodigo" runat="server" Width="102px"></asp:TextBox></td>   
             <td><asp:TextBox ID="txtProduto" runat="server" Width="356px"></asp:TextBox></td>
         </tr>
        <%--</table> 
        <table>--%>
         <tr>
             <td><asp:Label ID="lblQuantidade" runat="server" Text="Quantidade" Font-Size="X-Large"></asp:Label></td>
             <td><asp:Label ID="lblPreco" runat="server" Text="Preço" Font-Size="X-Large"></asp:Label></td>
             <td><asp:Label ID="lblDesconto" runat="server" Text="Desconto" Font-Size="X-Large"></asp:Label></td>  
         </tr>
         <tr>    
             <td><asp:TextBox ID="txtQuantidade" runat="server" Font-Names="Arial Black" Font-Size="XX-Large" Height="50px" style="margin-top: 0px" Width="142px"></asp:TextBox></td> 
             <td><asp:TextBox ID="txtPreco" runat="server" Font-Names="Arial Black" Font-Size="XX-Large" Height="50px" style="margin-top: 0px" Width="142px"></asp:TextBox></td> 
             <td><asp:TextBox ID="txtDesconto" runat="server" Font-Names="Arial Black" Font-Size="XX-Large" Height="50px" style="margin-top: 0px" Width="142px"></asp:TextBox>&nbsp;</td> 
         </tr> 
         <tr>
             <td><asp:Label ID="lblTotal" runat="server" Text="Total: " Font-Bold="True" Font-Italic="True" Font-Names="Arial Black" Font-Size="XX-Large"></asp:Label></td>
             <td><asp:Label ID="lblValorRecebido" runat="server" Text="Valor Recebido: " Font-Bold="True" Font-Italic="True" Font-Names="Arial Black" Font-Size="XX-Large"></asp:Label></td>
             <td><asp:Label ID="lblTroco" runat="server" Text="Troco: " Font-Bold="True" Font-Italic="True" Font-Names="Arial Black" Font-Size="XX-Large"></asp:Label></td>
         </tr>
         <tr>
            <td><asp:TextBox ID="txtTotal" runat="server" Width="123px" Enabled="false" Font-Bold="True" Font-Italic="True" Font-Names="Arial Black" Font-Size="XX-Large" Height="50px" style="margin-top: 23px"></asp:TextBox></td>
            <td><asp:TextBox ID="txtValorRecebido" runat="server" Width="123px" Font-Bold="True" Font-Italic="True" Font-Names="Arial Black" Font-Size="XX-Large" Height="50px" style="margin-top: 23px"></asp:TextBox></td>
            <td><asp:TextBox ID="txtTroco" runat="server" Width="123px" Font-Bold="True" Font-Italic="True" Font-Names="Arial Black" Font-Size="XX-Large" Height="50px" style="margin-top: 23px"></asp:TextBox></td>
         </tr>
         </table> 
    </fieldset>  
    </div>
    </form>
</body>
